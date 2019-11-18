var hol = angular.module('hol', ['ngMaterial', 'ngSanitize']);

hol.config(function ($mdThemingProvider) {
  var whiteBackground = $mdThemingProvider.extendPalette('grey', {
    '50': '#fefefe'
  });

  $mdThemingProvider.definePalette('whiteBackground', whiteBackground);

  $mdThemingProvider.theme('default')
      .primaryPalette('blue')
      .accentPalette('orange')
      .warnPalette('red')
      .backgroundPalette('whiteBackground');

  $mdThemingProvider.alwaysWatchTheme(true);
});

hol.controller('holController', ['$scope', '$http', '$mdSidenav', '$sanitize', '$sce', '$mdDialog', '$mdToast'
  , function ($scope, $http, $mdSidenav, $sanitize, $sce, $mdDialog, $mdToast) {
      $scope.toast = $mdToast;
      $scope.toastPromise = {};
      $scope.showCustomToast = function(data, delay, alwaysShow) {
        if($scope.selection === 'lab' || alwaysShow) {
          $mdToast.show({
            hideDelay   : delay,
            position    : 'bottom right',
            scope       : $scope,
            preserveScope : true,
            parent      : document.querySelector('#toastHolder'),
            controllerAs     : 'toast',
            bindToController : true,
            template : '<md-toast> \
                          <span class="md-toast-text">'+ data.text +'</span>' +
                           '<md-button ng-click="closeToast()"> \
                             Close \
                           </md-button> \
                        </md-toast>'
                      }).then(() => console.log('toast closed!'));
          }
        };

        $scope.closeToast = function() {
          $mdToast.hide();
        }

        //$scope.theme = 'default';
        $scope.selection = "";

        // READ MANIFEST - THEME, INTERACTIVE, MENU
        $http.get('manifest.json')
          .then(
            function (res) {
              //$scope.version = {};
              $scope.manifest = res.data;
              console.log("json",$scope.manifest);

              preparePage();
            },
            function (err) {
              console.log('Error getting manifest.json!');
              console.log(err);
            }
          );

        $scope.trustSrc = function (src) {
            return $sce.trustAsResourceUrl(src);
        }
        var preparePage = function() {
          if (parseQueryString()) {
            console.log('Parsed query string. Going to: ' + $scope.currentFilename);

            $scope.loadModule({
              filename: $scope.currentFilename
            });
          } else {
            $scope.showHomePage();
          }
        };

        var parseQueryString = function() {
          var success = false;
          if ('URLSearchParams' in window) {
            let searchParams = new URLSearchParams(window.location.search);
            console.log('Query Params:');
            console.log(searchParams.get("page"));

            let page = searchParams.get("page");

            if (page) {
              $scope.currentFilename = page || undefined;
              success = true;
            }
          }

          return success;
        }

        $scope.showHomePage = function() {
          $scope.loadModule({
            filename: 'README.md'
          });
        };

        $scope.loadContent = function (page) {
            console.log('Loading page: ' + page);

            $http.get(page)
              .then(function (res) {
                console.log('Got page: ' + page);
                var converter = new showdown.Converter({tables: true})
                  , text = res.data;
                converter.setFlavor('github');

                var html = converter.makeHtml(text);

                $scope.htmlContent = html;
                $scope.selection = 'lab';
                page.htmlContent = html;
                setTimeout(function () {
                    // $("#module-content h2").next("h3").addClass("first-in-section");
                    $("#module-content h3:first")
                      .before('<button class="hol-ToggleRegions plus">Expand All Parts</button>')
                      .prev()
                      .add("#module-content h3")
                      .on('click', stepClickHandler);
                    $("#module-content h3").nextUntil("#module-content h1, #module-content h2, #module-content h3").hide();
                    $("#module-content h3").addClass('plus');
                    $("#module-content h3").unbind('click', stepClickHandler);
                    $("#module-content h3").click(stepClickHandler);
                    window.scrollTo(0, 0);
                }, 0);
              },
              function (err) {
                $scope.showCustomToast({'text': 'File: ' + page + ' not found!'}, 5000, true);
                $scope.showHomePage();
                console.log('Error getting lab guide markdown!');
                console.log(err);
              }
            );
        }

        $scope.loadModule = function (module, push) {
          push = (push === false) ? false : true;
          $scope.currentFilename = module.filename;

          if ('URLSearchParams' in window) {
            var searchParams = new URLSearchParams(window.location.search);

            searchParams.set("page", module.filename);

            var newRelativePathQuery = window.location.pathname + '?' + searchParams.toString();

            if (push) {
              history.pushState(module, '', newRelativePathQuery);
            }
          }

          $scope.loadContent(module.filename);

          setTimeout(function () {
            $("#module-content a").each(function () {
              if (this.href.endsWith('.md')) {
                $(this).on("click", function (event) {
                  event.preventDefault();
                  console.log('clicked on: ' + this.getAttribute('href'));
                  $scope.loadModule({
                    filename: this.getAttribute('href')
                  });
                });
              }
            })
          }, 500);
        }

        $(window).on('popstate', function(event) {
          $scope.loadModule(history.state, false);
        });

        function fadeInAll() {
          // fadeInStep($(this).next('h3'));
          $('#module-content h3').each(function() {
            fadeInStep(this);
          });
          $('.hol-ToggleRegions').addClass('minus');
          $('.hol-ToggleRegions').removeClass('plus');
          $('.hol-ToggleRegions').text('Collapse All Parts');
        }

        function fadeOutAll() {
          $('#module-content h3').each(function() {
            fadeOutStep(this);
          });
          $('.hol-ToggleRegions').removeClass('minus');
          $('.hol-ToggleRegions').addClass('plus');
          $('.hol-ToggleRegions').text('Expand All Parts');
        }

        function fadeOutStep(step) {
          $(step).nextUntil("#module-content h1, #module-content h2, #module-content h3").fadeOut();
          $(step).addClass('plus');
          $(step).removeClass('minus');
        }

        function fadeInStep(step) {
          $(step).nextUntil("#module-content h1, #module-content h2, #module-content h3").fadeIn();
          $(step).addClass('minus');
          $(step).removeClass('plus');
        }


        stepClickHandler = function (e) {

          if ($(this).hasClass('hol-ToggleRegions')) {

            if ($(this).hasClass('plus')) {
              fadeInAll();
            }
            else {
              fadeOutAll();
            }
          } else { //user has clicked in the H3, only work on this step
            if ($(this).hasClass('plus')) {
              fadeInStep($(this));
            }
            else if ($(this).hasClass('minus')) {
              fadeOutStep($(this));
            }
          }
        };

        $scope.toggleLeft = function () {
            $mdSidenav('left').toggle();
        };

        $scope.close = function () {
            $mdSidenav('left').close();
        };
    }
  ]
);