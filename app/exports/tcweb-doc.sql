prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.05.24'
,p_release=>'18.2.0.00.12'
,p_default_workspace_id=>2572059021012137
,p_default_application_id=>100
,p_default_owner=>'TCWEBADMIN'
);
end;
/
 
prompt APPLICATION 100 - TCWEB Documents
--
-- Application Export:
--   Application:     100
--   Name:            TCWEB Documents
--   Date and Time:   16:33 水曜日 12月 19, 2018
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     248259925035928
--

-- Application Statistics:
--   Pages:                     40
--     Items:                  105
--     Validations:              3
--     Processes:               67
--     Regions:                110
--     Buttons:                 72
--     Dynamic Actions:         43
--   Shared Components:
--     Logic:
--       Items:                  7
--       Processes:              1
--       Computations:           5
--       App Settings:           2
--       Build Options:          6
--     Navigation:
--       Lists:                  7
--       Breadcrumbs:            1
--         Entries:              9
--     Security:
--       Authentication:         1
--       Authorization:          3
--       ACL Roles:              3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              11
--       LOVs:                  17
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
--     E-Mail:
--       Templates:              2
--   Supporting Objects:  Included
--     Install scripts:          3

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,100)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TCWEBADMIN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'TCWEB Documents')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TCWEB')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'D453E69F68147EA5F55CB9D2F483B11F0515E3D0663AB2E01AFF6C6D953491AE'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'ja'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\4F5C\6210\30A6\30A3\30B6\30FC\30C92018.11.29\304B\3089\4F5C\6210\3055\308C\305F\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3002')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(16322123455626915)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:TCWEB Documents'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'20181206'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306F\3001\73FE\6642\70B9\3067\306F\4F7F\7528\3067\304D\307E\305B\3093\3002')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(16447643245627126)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'TCWEB Documents'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181219163211'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・メニュー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16322917747626920)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30E1\30CB\30E5\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16456232047627176)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\65B0\7740\60C5\5831')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.:B_INIT:&DEBUG.:5,RIR:::'
,p_list_item_icon=>'fa-bolt'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16854855235168790)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\6240\6709\8005\306B\3088\308B\691C\7D22')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-plus'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16689258836011764)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\8CC7\6599\306E\65B0\898F\767B\9332')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-upload'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16875558547235841)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\308F\305F\3057\306E\8CC7\6599 [&MY_OWN_DOCUMENTS.]')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.:MYDOC:&DEBUG.:5,RIR:::'
,p_list_item_icon=>'fa-edit'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16875848272242122)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('\308F\305F\3057\306E\4FEE\6B63\4F9D\983C [&MY_OPEN_REMARKS.]')
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil-square'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16876212453248283)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('\30A2\30AF\30BB\30B9\5C65\6B74')
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16833372161119278)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-bar-chart'
,p_parent_list_item_id=>wwv_flow_api.id(16876212453248283)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16849619095158960)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_parent_list_item_id=>wwv_flow_api.id(16876212453248283)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16641553137992103)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('\7D71\8A08\60C5\5831')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart-horizontal'
,p_parent_list_item_id=>wwv_flow_api.id(16876212453248283)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16596806829627481)
,p_list_item_display_sequence=>1000
,p_list_item_link_text=>unistr('\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_api.id(16447449612627126)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/デスクトップ・ナビゲーション・バー
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16442922040627073)
,p_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30CA\30D3\30B2\30FC\30B7\30E7\30F3\30FB\30D0\30FC')
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16593290825627478)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(16444988891627120)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16593594530627479)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\60C5\5831')
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(16445519419627120)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16594062839627479)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30DA\30FC\30B8\306E\30D8\30EB\30D7')
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(16593594530627479)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(16445519419627120)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16594469749627480)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(16593594530627479)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16594912889627480)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('\60C5\5831\30DA\30FC\30B8')
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&SESSION.::&DEBUG.:10060'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_api.id(16593594530627479)
,p_required_patch=>wwv_flow_api.id(16445519419627120)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16595167548627480)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16595728450627481)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(16595167548627480)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16596053058627481)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('\30B5\30A4\30F3\30A2\30A6\30C8')
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(16595167548627480)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/アプリケーション構成
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16597893774627485)
,p_name=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\69CB\6210')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(16445187386627120)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16598336588627486)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\69CB\6210\30AA\30D7\30B7\30E7\30F3')
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\6A5F\80FD\306E\6709\52B9\5316\307E\305F\306F\7121\52B9\5316')
,p_required_patch=>wwv_flow_api.id(16445187386627120)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/ユーザー・インタフェース
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16598595595627486)
,p_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A4\30F3\30BF\30D5\30A7\30FC\30B9')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(16445640864627120)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16599020814627486)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\306E\9078\629E')
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.:10020:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>unistr('\30C7\30D5\30A9\30EB\30C8\30FB\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\30EB\30C3\30AF\30FB\30A2\30F3\30C9\30FB\30D5\30A3\30FC\30EB\306E\8A2D\5B9A')
,p_required_patch=>wwv_flow_api.id(16445640864627120)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/アクティビティ・レポート
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16599266088627487)
,p_name=>unistr('\30A2\30AF\30C6\30A3\30D3\30C6\30A3\30FB\30EC\30DD\30FC\30C8')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(16444914789627120)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16599735799627487)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30C0\30C3\30B7\30E5\30DC\30FC\30C9')
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A2\30AF\30C6\30A3\30D3\30C6\30A3\30FB\30E1\30C8\30EA\30C3\30AF\306E\8868\793A')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16600078331627487)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\30C8\30C3\30D7\30FB\30E6\30FC\30B6\30FC')
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:10031:::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>unistr('\30E6\30FC\30B6\30FC\3054\3068\306B\96C6\8A08\3055\308C\305F\30DA\30FC\30B8\30FB\30D3\30E5\30FC\306E\30EC\30DD\30FC\30C8')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16600471463627488)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A8\30E9\30FC\30FB\30ED\30B0')
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:10032:::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\3088\3063\3066\30ED\30B0\306B\8A18\9332\3055\308C\308B\30A8\30E9\30FC\306E\30EC\30DD\30FC\30C8')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16600910838627488)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\30DA\30FC\30B8\30FB\30D1\30D5\30A9\30FC\30DE\30F3\30B9')
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&SESSION.::&DEBUG.:10033:::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30DA\30FC\30B8\5225\306E\30A2\30AF\30C6\30A3\30D3\30C6\30A3\3068\30D1\30D5\30A9\30FC\30DE\30F3\30B9\306E\30EC\30DD\30FC\30C8')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16601325147627488)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RIR,10034:::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>unistr('\30A2\30AF\30BB\30B9\65E5\3068\7D4C\904E\6642\9593\3092\542B\3080\30E6\30FC\30B6\30FC\5225\306E\5404\30DA\30FC\30B8\30FB\30D3\30E5\30FC\306E\30EC\30DD\30FC\30C8')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/アクセス制御
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16601612938627488)
,p_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(16444820296627120)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16602044362627489)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30E6\30FC\30B6\30FC')
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\8A2D\5B9A\306E\5909\66F4\3068\30A2\30AF\30BB\30B9\5236\5FA1\306E\7121\52B9\5316')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16602441348627489)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1')
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\306E\8A2D\5B9A')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/フィードバック
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16602737650627489)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_api.id(16444988891627120)
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16603107232627489)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\30E6\30FC\30B6\30FC\30FB\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&SESSION.::&DEBUG.:10053:::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30E6\30FC\30B6\30FC\306B\3088\3063\3066\9001\4FE1\3055\308C\305F\3059\3079\3066\306E\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\30EC\30DD\30FC\30C8')
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E64617461626173653C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223354136384144222F3E3C672069643D2269636F6E73223E3C7061746820636C6173733D22';
wwv_flow_api.g_varchar2_table(8) := '636C732D322220643D224D3332203438632D362E36323720302D31322D312E3739312D31322D347631633020322E32303920352E333733203420313220347331322D312E3739312031322D34762D31633020322E3230392D352E33373320342D31322034';
wwv_flow_api.g_varchar2_table(9) := '7A222F3E3C7061746820636C6173733D22636C732D332220643D224D3332203431632D362E36323720302D31322D312E3739312D31322D347637633020322E32303920352E333733203420313220347331322D312E3739312031322D34762D3763302032';
wwv_flow_api.g_varchar2_table(10) := '2E3230392D352E33373320342D313220347A222F3E3C7061746820636C6173733D22636C732D342220643D224D3332203430632D362E31313820302D31312E3135372D312E3532372D31312E392D332E3561312E34323720312E3432372030203020302D';
wwv_flow_api.g_varchar2_table(11) := '2E312E35633020322E32303920352E333733203420313220347331322D312E3739312031322D3461312E34323720312E3432372030203020302D2E312D2E35632D2E37343320312E3937332D352E37383220332E352D31312E3920332E357A222F3E3C70';
wwv_flow_api.g_varchar2_table(12) := '61746820636C6173733D22636C732D332220643D224D3332203333632D362E36323720302D31322D312E3739312D31322D347637633020322E32303920352E333733203420313220347331322D312E3739312031322D34762D37633020322E3230392D35';
wwv_flow_api.g_varchar2_table(13) := '2E33373320342D313220347A222F3E3C656C6C6970736520636C6173733D22636C732D34222063783D223332222063793D223230222072783D223132222072793D2234222F3E3C7061746820636C6173733D22636C732D332220643D224D333220323463';
wwv_flow_api.g_varchar2_table(14) := '2D362E36323720302D31322D312E3739312D31322D347638633020322E32303920352E333733203420313220347331322D312E3739312031322D34762D38633020322E3230392D352E33373320342D313220347A222F3E3C7061746820636C6173733D22';
wwv_flow_api.g_varchar2_table(15) := '636C732D342220643D224D3332203332632D362E31313820302D31312E3135372D312E3532372D31312E392D332E3561312E34323720312E3432372030203020302D2E312E35633020322E32303920352E333733203420313220347331322D312E373931';
wwv_flow_api.g_varchar2_table(16) := '2031322D3461312E34323720312E3432372030203020302D2E312D2E35632D2E37343320312E3937332D352E37383220332E352D31312E3920332E357A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E';
wwv_flow_api.g_varchar2_table(17) := '6B3A687265663D2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(16444259186627118)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233541363841443B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(16444605112627119)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16319949537626910)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16320258921626911)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16320615103626912)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16320858012626912)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16321155355626913)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16321449023626913)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16321839425626913)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations/管理権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(16447449612627126)
,p_name=>unistr('\7BA1\7406\6A29\9650')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>unistr('\7BA1\7406\8005')
,p_attribute_02=>'A'
,p_error_message=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\7BA1\7406\8005\3067\306F\3042\308A\307E\305B\3093')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/リーダー権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(16447643245627126)
,p_name=>unistr('\30EA\30FC\30C0\30FC\6A29\9650')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>unistr('\30A2\30AF\30BB\30B9\6A29\3092\4ED8\4E0E\3055\308C\3066\3044\306A\3044\304B\3001\30A2\30AB\30A6\30F3\30C8\304C\30ED\30C3\30AF\3055\308C\3066\3044\308B\305F\3081\3001\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\8868\793A\306F\8A31\53EF\3055\308C\307E\305B\3093\3002\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\7BA1\7406\8005\306B\9023\7D61\3057\3066\304F\3060\3055\3044\3002')
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/コントリビューション権限
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(16447698710627126)
,p_name=>unistr('\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30B7\30E7\30F3\6A29\9650')
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>unistr('\7BA1\7406\8005,\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF')
,p_attribute_02=>'A'
,p_error_message=>unistr('\6A29\9650\304C\4E0D\5341\5206\3067\3059\3002\30E6\30FC\30B6\30FC\306F\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\3067\306F\3042\308A\307E\305B\3093')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/app_access_control/管理者
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(16447141518627125)
,p_static_id=>'ADMINISTRATOR'
,p_name=>unistr('\7BA1\7406\8005')
,p_description=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\7BA1\7406\8005\306B\5272\308A\5F53\3066\3089\308C\305F\30ED\30FC\30EB\3002')
);
end;
/
prompt --application/shared_components/security/app_access_control/コントリビュータ
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(16447288666627126)
,p_static_id=>'CONTRIBUTOR'
,p_name=>unistr('\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF')
,p_description=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306B\5272\308A\5F53\3066\3089\308C\305F\30ED\30FC\30EB\3002')
);
end;
/
prompt --application/shared_components/security/app_access_control/リーダー
begin
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(16447393555627126)
,p_static_id=>'READER'
,p_name=>unistr('\30EA\30FC\30C0\30FC')
,p_description=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30EA\30FC\30C0\30FC\306B\5272\308A\5F53\3066\3089\308C\305F\30ED\30FC\30EB\3002')
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(16617830356694051)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\3068\306A\308B\30B3\30EC\30AF\30B7\30E7\30F3\306E\521D\671F\5316')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   apex_collection.create_or_truncate_collection(',
'      p_collection_name => ''SEARCH_WORDS'');',
'  apex_collection.create_or_truncate_collection(',
'      p_collection_name => ''SEARCH_HASHTAGS'');',
'   apex_collection.create_or_truncate_collection(',
'      p_collection_name => ''SEARCH_OWNERS'');     ',
'end;'))
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16616229676642929)
,p_name=>'AI_BREADCRUMB_NAME'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(7958722036408482)
,p_name=>'AI_CONTAINS'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16616370426647336)
,p_name=>'IN_CONSULTING'
,p_protection_level=>'I'
,p_item_comment=>unistr('TCW_CONSUL_USER\306B\30A8\30F3\30C8\30EA\304C\3042\308B\3001\3064\307E\308A\30B3\30F3\30B5\30EB\30C6\30A3\30F3\30B0\90E8\9580\3067\3042\308C\3070\3001\FF11\3001\305D\308C\4EE5\5916\306F\FF10\3068\3059\308B\3002')
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16616745405654953)
,p_name=>'MY_OPEN_REMARKS'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16616857846658633)
,p_name=>'MY_OWN_DOCUMENTS'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16617075053663083)
,p_name=>'OPEN_FEEDBACK_COUNT'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16617259182668405)
,p_name=>'P0_KEYWORD'
,p_protection_level=>'N'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(16618487219720810)
,p_computation_sequence=>10
,p_computation_item=>'IN_CONSULTING'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from tcw_consul_user where upper(u_email) = :APP_USER'
,p_computation_comment=>unistr('\30B3\30F3\30B5\30EB\30C6\30A3\30F3\30B0\6240\5C5E\304B\3069\3046\304B\3001\78BA\8A8D\3057\3066\30D5\30E9\30B0\3092\7ACB\3066\308B\30020\3088\308A\5927\304D\3051\308C\3070\3001\30B3\30F3\30B5\30EB\30C6\30A3\30F3\30B0\6240\5C5E\3068\3044\3046\610F\5473\306B\306A\308B\3002')
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(16618726468759924)
,p_computation_sequence=>10
,p_computation_item=>'MY_OPEN_REMARKS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) from tcw_documents l join tcw_doc_remarks r on l.link_num = r.link_num ',
'where r.is_closed = ''N'' and',
'(l.link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER)',
'   or l.upd_username = :APP_USER)'))
,p_computation_comment=>unistr('\81EA\5206\304C\6700\7D42\66F4\65B0\8005\3067\3042\308B\304B\3001\7DE8\96C6\6A29\9650\3092\6301\3063\3066\3044\308B\8CC7\6599\306B\3064\3044\3066\3044\308B\9589\3058\3066\3044\306A\3044\4FEE\6B63\8981\6C42\306E\6570\3092\8A08\7B97\3057\3066\3044\308B\3002\767B\9332\6642\306E\30E6\30FC\30B6\30FC\306Freg_username\306B\8A18\9332\3055\308C\3066\3044\308B\8CC7\6599\306B\3064\3044\3066\3001\5BFE\8C61\5916\3002')
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(16618864913790146)
,p_computation_sequence=>10
,p_computation_item=>'MY_OWN_DOCUMENTS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) from tcw_documents ',
'where opl_code > 0 and upd_username = :APP_USER ',
unistr('\3000\3000or link_num in '),
'(select link_num from tcw_doc_acls where user_name = :APP_USER);'))
,p_computation_comment=>unistr('\81EA\5206\304C\6700\7D42\66F4\65B0\8005\304B\7DE8\96C6\6A29\9650\3092\6301\3063\3066\3044\308B\8CC7\6599\306E\6570\3002')
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(16618306014710944)
,p_computation_sequence=>10
,p_computation_item=>'IN_CONSULTING'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from tcw_consul_user where upper(u_email) = :APP_USER'
,p_computation_comment=>unistr('\30B3\30F3\30B5\30EB\30C6\30A3\30F3\30B0\6240\5C5E\304B\3069\3046\304B\78BA\8A8D\3057\3066\3001\30D5\30E9\30B0\3092\7ACB\3066\308B\3002')
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(16619117253796888)
,p_computation_sequence=>10
,p_computation_item=>'OPEN_FEEDBACK_COUNT'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from apex_team_feedback where feedback_status <> 4;'
,p_computation_comment=>unistr('\30AA\30FC\30D7\30F3\4E2D\306E\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\6570\3002')
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(16448772306627132)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(16444988891627120)
);
wwv_flow_api.create_app_setting(
 p_id=>wwv_flow_api.id(16449117130627133)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_api.id(16444820296627120)
,p_comments=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\306B\5B58\5728\3057\306A\3044\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306B\63D0\4F9B\3055\308C\305F\30C7\30D5\30A9\30EB\30C8\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB')
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16539403323627388)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16467569698627228)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16547212021627396)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_api.id(16547212021627396)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16547500029627396)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9')
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16566123097627428)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_api.id(16566123097627428)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16566398770627428)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\826F\3044')
,p_lov_return_value=>'3'
,p_lov_template=>'<span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16566818842627428)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\3069\3061\3089\3068\3082\3044\3048\306A\3044')
,p_lov_return_value=>'2'
,p_lov_template=>'<span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16567198663627428)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\60AA\3044')
,p_lov_return_value=>'1'
,p_lov_template=>'<span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16576471296627438)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(16576471296627438)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16576772926627438)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30A2\30AF\30B7\30E7\30F3\306A\3057')
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16577242630627438)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\78BA\8A8D\6E08')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16577552221627439)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\30AA\30FC\30D7\30F3')
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16578009750627440)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\30AF\30ED\30FC\30BA')
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_content_type_aliases
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16621399532919149)
,p_lov_name=>'LIST_CONTENT_TYPE_ALIASES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select content_type_alias as d,',
'       content_type as r',
'from tcw_content_types'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_classifications
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16621631742919192)
,p_lov_name=>'LIST_OF_CLASSIFICATIONS'
,p_lov_query=>'.'||wwv_flow_api.id(16621631742919192)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16621960523919193)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\4F5C\696D\4E2D')
,p_lov_return_value=>'W'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16622351828919194)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\793E\5916\516C\958B\53EF')
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16622818711919194)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\793E\5185\306E\307F')
,p_lov_return_value=>'C'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_conf_name
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16623104879919195)
,p_lov_name=>'LIST_OF_CONF_NAME'
,p_lov_query=>'.'||wwv_flow_api.id(16623104879919195)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16623505550919195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\516C\958B\8CC7\6599')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16623868332919196)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Oracle Confidential'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16624331995919196)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Internal Use Only'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16624659203919196)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Strictly Confidential'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16625135110919197)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Consulting Only'
,p_lov_return_value=>'5'
,p_lov_disp_cond_type=>'EXISTS'
,p_lov_disp_cond=>'select 1 from tcw_consul_user where u_email = lower(:APP_USER)'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16625527744919197)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>unistr('\30D7\30E9\30A4\30D9\30FC\30C8')
,p_lov_return_value=>'6'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_conf_name_disp
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16625796463919198)
,p_lov_name=>'LIST_OF_CONF_NAME_DISP'
,p_lov_query=>'.'||wwv_flow_api.id(16625796463919198)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16626212345919198)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\516C\958B\8CC7\6599')
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16626593167919198)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Oracle Confidential'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16626977818919199)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Internal Use Only'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16627348965919199)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Strictly Confidential'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16627819878919200)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Consulting Only'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16628211457919200)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>unistr('\30D7\30E9\30A4\30D9\30FC\30C8')
,p_lov_return_value=>'6'
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_documents
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16628541427919200)
,p_lov_name=>'LIST_OF_DOCUMENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select obj_name || '' - '' || u.user_name as d,',
'       link_num as r',
'  from tcw_documents d join tcw_user_names u on d.upd_username = u.user_name',
' where opl_code between 1 and 5',
' order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_email
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16628765528919201)
,p_lov_name=>'LIST_OF_EMAIL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'         when last_name is null then user_name',
'         else last_name || '' '' || first_name || '' <'' || lower(user_name) || ''>''',
'       end as d,',
'       user_name as r',
'  from tcw_user_names',
' order by 2'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/list_of_link_types
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16629057956919201)
,p_lov_name=>'LIST_OF_LINK_TYPES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select link_type_name as d,',
'       link_type_id as r',
'  from tcw_link_types',
' order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16451368872627159)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(16451368872627159)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16451793100627161)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/my_documents
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16629475336919202)
,p_lov_name=>'MY_DOCUMENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select link_num || '':'' || obj_name as d,',
'       link_num as r',
'from tcw_documents',
'where ',
' (upd_username = :APP_USER',
'  or',
'  link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER)',
' )',
'  and opl_code != 0',
'order by link_num desc;',
''))
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16488077102627281)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16468265602627231)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_api.id(16468265602627231)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16468601369627231)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306B\3088\308B\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\306E\9078\629E\3092\8A31\53EF')
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16523485773627367)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_api.id(16523485773627367)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16523832670627368)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\30EC\30DD\30FC\30C8\30FB\30DA\30FC\30B8\306E\8FFD\52A0')
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16524204597627368)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\30C1\30E3\30FC\30C8\30FB\30DA\30FC\30B8\306E\8FFD\52A0')
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(16449439864627134)
,p_group_name=>unistr('\7BA1\7406')
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(16322385651626917)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16597721185627484)
,p_short_name=>unistr('\7BA1\7406')
,p_link=>'f?p=&APP_ID.:10000:&SESSION.'
,p_page_id=>10000
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16666015503992169)
,p_short_name=>unistr('\7D71\8A08\60C5\5831')
,p_link=>'f?p=&APP_ID.:1:&SESSION.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16703414256011833)
,p_parent_id=>0
,p_short_name=>'&AI_BREADCRUMB_NAME.'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16735554199021010)
,p_short_name=>unistr('\8A73\7D30\60C5\5831')
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16770555650029975)
,p_short_name=>unistr('TCWEB: \30D7\30ED\30D5\30A1\30A4\30EB')
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16810610403068513)
,p_short_name=>unistr('\8CC7\6599\306E\524A\9664')
,p_link=>'f?p=&APP_ID.:8:&SESSION.'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16831935084111957)
,p_short_name=>unistr('\79C1\306E\4FEE\6B63\4F9D\983C')
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16837229521119291)
,p_short_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(16853417600158972)
,p_short_name=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_link=>'f?p=&APP_ID.:19:&SESSION.'
,p_page_id=>19
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16323226957626924)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16323520718626931)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16323803239626932)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16324105761626932)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16324438167626932)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16324659966626932)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16324951932626932)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16325267053626932)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16325623726626932)
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16325964629626936)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16326254145626937)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16326552149626937)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16326866261626937)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16327221305626938)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16327534020626938)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16327778289626938)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16328091927626938)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16328355681626938)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16328647837626938)
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16329112425626938)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner" role="main">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer" role="contentinfo">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16329439657626939)
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16329715207626939)
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16329973544626939)
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16330324797626939)
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16330590931626939)
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16330927797626940)
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16331218698626940)
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16331580584626940)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" a'
||'ria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16331894445626940)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16332202687626940)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16332481857626941)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16332804562626941)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16333112292626941)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16333444629626941)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16333712055626941)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16333948046626941)
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16334391175626941)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body" role="main">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16334738229626942)
,p_page_template_id=>wwv_flow_api.id(16334391175626941)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16335039498626942)
,p_page_template_id=>wwv_flow_api.id(16334391175626941)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16335335340626942)
,p_page_template_id=>wwv_flow_api.id(16334391175626941)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16335936940626942)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16336188515626943)
,p_page_template_id=>wwv_flow_api.id(16335936940626942)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16336488808626943)
,p_page_template_id=>wwv_flow_api.id(16335936940626942)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16336719981626943)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16337012673626944)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16337285629626944)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16337599562626944)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16337919268626944)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16338184624626944)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16338470909626944)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16338788035626945)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16339065221626945)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16339375883626945)
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16339812025626945)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body" role="main">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16340109436626945)
,p_page_template_id=>wwv_flow_api.id(16339812025626945)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16340395604626945)
,p_page_template_id=>wwv_flow_api.id(16339812025626945)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16340663955626945)
,p_page_template_id=>wwv_flow_api.id(16339812025626945)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(16341338282626946)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner" role="main">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer" role="contentinfo">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16341609628626946)
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16341873552626947)
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16342195739626947)
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16342477235626947)
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16342821190626947)
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16343143531626947)
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(16343399687626947)
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(16421169097627029)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(16421301161627030)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(16421367434627030)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16343804811626948)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16344097848626950)
,p_plug_template_id=>wwv_flow_api.id(16343804811626948)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16347464281626954)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16347736066626954)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16348038449626954)
,p_plug_template_id=>wwv_flow_api.id(16347736066626954)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16348325142626954)
,p_plug_template_id=>wwv_flow_api.id(16347736066626954)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16348528443626954)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16348777939626955)
,p_plug_template_id=>wwv_flow_api.id(16348528443626954)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16349141884626955)
,p_plug_template_id=>wwv_flow_api.id(16348528443626954)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16355870978626962)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16356155613626963)
,p_plug_template_id=>wwv_flow_api.id(16355870978626962)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16357378400626964)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16357729426626964)
,p_plug_template_id=>wwv_flow_api.id(16357378400626964)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16359448941626967)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16359772004626967)
,p_plug_template_id=>wwv_flow_api.id(16359448941626967)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16360134719626968)
,p_plug_template_id=>wwv_flow_api.id(16359448941626967)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16361453659626970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16361780743626970)
,p_plug_template_id=>wwv_flow_api.id(16361453659626970)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16362057241626970)
,p_plug_template_id=>wwv_flow_api.id(16361453659626970)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16366068260626974)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16367934999626975)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16368532886626976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16368815784626976)
,p_plug_template_id=>wwv_flow_api.id(16368532886626976)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16369012041626976)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16369304919626976)
,p_plug_template_id=>wwv_flow_api.id(16369012041626976)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16369564873626977)
,p_plug_template_id=>wwv_flow_api.id(16369012041626976)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16375794913626980)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16376067673626980)
,p_plug_template_id=>wwv_flow_api.id(16375794913626980)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16376410987626981)
,p_plug_template_id=>wwv_flow_api.id(16375794913626980)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16378389489626982)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(16379426525626983)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(16379661795626983)
,p_plug_template_id=>wwv_flow_api.id(16379426525626983)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16400097722627004)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16404084516627012)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16409079776627015)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16411498223627016)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16411687192627017)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16412053106627018)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16413055643627018)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16414706730627020)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16415731934627020)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16417291533627021)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16418544286627022)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(16418912230627022)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/report/hashtags
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7918501260641376)
,p_row_template_name=>'Hashtags'
,p_internal_name=>'HASHTAGS'
,p_row_template1=>'<a onclick=''apex.submit({ set:{"#ITEM_NAME#":"##HASHTAG#"}, showWait:true });''>##HASHTAG#(#COUNT#)</a>&nbsp;'
,p_row_template_before_rows=>' <div class="#COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_hashtags">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_preset_template_options=>'t-Report--hideNoPagination'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16380660843626985)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16380869980626988)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16384859035626991)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16385684812626991)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16388254384626993)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(16388254384626993)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16390938319626996)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16392938681626998)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16394686791626999)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16395129796627000)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(16399903083627004)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(16420505646627025)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(16420588416627027)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(16420712430627027)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(16420751655627027)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(16420864408627027)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(16420996617627028)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(16421128635627028)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(16422090491627031)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(16422314339627036)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(16422211933627033)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(16423456438627046)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(16341338282626946)
,p_default_dialog_template=>wwv_flow_api.id(16339812025626945)
,p_error_template=>wwv_flow_api.id(16335936940626942)
,p_printer_friendly_template=>wwv_flow_api.id(16341338282626946)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(16335936940626942)
,p_default_button_template=>wwv_flow_api.id(16421301161627030)
,p_default_region_template=>wwv_flow_api.id(16369012041626976)
,p_default_chart_template=>wwv_flow_api.id(16369012041626976)
,p_default_form_template=>wwv_flow_api.id(16369012041626976)
,p_default_reportr_template=>wwv_flow_api.id(16369012041626976)
,p_default_tabform_template=>wwv_flow_api.id(16369012041626976)
,p_default_wizard_template=>wwv_flow_api.id(16369012041626976)
,p_default_menur_template=>wwv_flow_api.id(16378389489626982)
,p_default_listr_template=>wwv_flow_api.id(16369012041626976)
,p_default_irr_template=>wwv_flow_api.id(16367934999626975)
,p_default_report_template=>wwv_flow_api.id(16388254384626993)
,p_default_label_template=>wwv_flow_api.id(16420751655627027)
,p_default_menu_template=>wwv_flow_api.id(16422090491627031)
,p_default_calendar_template=>wwv_flow_api.id(16422211933627033)
,p_default_list_template=>wwv_flow_api.id(16413055643627018)
,p_default_nav_list_template=>wwv_flow_api.id(16412053106627018)
,p_default_top_nav_list_temp=>wwv_flow_api.id(16412053106627018)
,p_default_side_nav_list_temp=>wwv_flow_api.id(16411687192627017)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(16359448941626967)
,p_default_dialogr_template=>wwv_flow_api.id(16347464281626954)
,p_default_option_label=>wwv_flow_api.id(16420751655627027)
,p_default_required_label=>wwv_flow_api.id(16421128635627028)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(16411498223627016)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16422460993627038)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16422668137627039)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16422913600627039)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16423145513627039)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16423318842627039)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16344374975626952)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16344959913626953)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16345395441626953)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16345956932626953)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16349397820626955)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16350396660626956)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16351842135626957)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16353035342626957)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16353579356626957)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16354012612626959)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16354436359626960)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16356897853626963)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16358247601626965)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16360634765626969)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16363188954626971)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16366381524626974)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16367151462626975)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16376854659626981)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16377269338626982)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16377703320626982)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16379973799626984)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16381236948626989)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16381569812626989)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16383399425626990)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16385151817626991)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16387046107626992)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16388561861626994)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16389019045626994)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16389812874626995)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16391171945626996)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16395998333627000)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16397162523627001)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16398038892627002)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16400348100627006)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16400822337627007)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16402601818627009)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16405030802627013)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16406181873627013)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16406958300627014)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16410433501627016)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16414183358627019)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16415994981627020)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16416389367627020)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16417560315627021)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16421601456627030)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16423651878627056)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16424087901627057)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16425724198627057)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16426087419627058)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16427737614627059)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16428047750627059)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16429745562627060)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16430117229627061)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16431705561627062)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16432142078627062)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16432459975627062)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16432918740627063)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16433289052627063)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16433667445627063)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16434116400627063)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16435512751627064)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16436885430627065)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16437862741627066)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16438278966627066)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16438713764627066)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16439108741627066)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16439661065627067)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16440317064627067)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16440701128627067)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16441142064627067)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16441480203627068)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(16442346582627069)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16325935836626935)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(16323226957626924)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16328954569626938)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(16325964629626936)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16331502662626940)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(16329112425626938)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16334258231626941)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(16331580584626940)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16335630801626942)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(16334391175626941)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16335816335626942)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(16334391175626941)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16339671731626945)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(16336719981626943)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16341036573626946)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(16339812025626945)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16341224667626946)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(16339812025626945)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16343709605626947)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(16341338282626946)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16344613578626952)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(16344374975626952)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16344826780626953)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16345192464626953)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(16344959913626953)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16345564867626953)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(16345395441626953)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16345770131626953)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(16344959913626953)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16346232565626953)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(16345956932626953)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16346417858626953)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(16345395441626953)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16346628017626953)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(16344959913626953)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16346827769626953)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(16344374975626952)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16346951245626954)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(16345395441626953)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16347222253626954)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(16345395441626953)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16347420774626954)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16343804811626948)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(16345956932626953)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16349620939626955)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16349817131626956)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16349982296626956)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16350230823626956)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16350568875626956)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(16350396660626956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16350802974626956)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(16350396660626956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16350993462626956)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(16350396660626956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16351150520626956)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(16350396660626956)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16351403622626957)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16351565884626957)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16351995469626957)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16352216285626957)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16352383529626957)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16352562777626957)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16352774335626957)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16353157325626957)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(16353035342626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16353380787626957)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(16353035342626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16353785891626958)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(16353579356626957)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16354193387626959)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(16354012612626959)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16354612322626960)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16354806024626960)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16354959514626961)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(16354012612626959)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16355202277626961)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(16353579356626957)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16355440468626961)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16355628988626961)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16355793626626962)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16348528443626954)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16356547116626963)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16355870978626962)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16356740128626963)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16355870978626962)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16357049755626964)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16355870978626962)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(16356897853626963)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16357313989626964)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16355870978626962)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16357986354626965)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(16357378400626964)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16358432297626965)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16357378400626964)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(16358247601626965)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16358606032626965)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16357378400626964)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(16358247601626965)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16358765311626966)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16357378400626964)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(16358247601626965)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16358961480626966)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16357378400626964)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16359170249626967)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16357378400626964)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16359369167626967)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16357378400626964)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16360428662626969)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(16359448941626967)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16360837451626969)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(16359448941626967)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(16360634765626969)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16360948275626970)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(16359448941626967)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16361167453626970)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(16359448941626967)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(16360634765626969)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16361420442626970)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16359448941626967)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16362348971626971)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16362628872626971)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16362786424626971)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16362994112626971)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16363385913626972)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(16363188954626971)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16363582960626972)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(16363188954626971)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16363803985626972)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16363973542626972)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16364244638626972)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16364400551626972)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16364591273626973)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16364802834626973)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16365011980626973)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(16353579356626957)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16365195987626973)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16365361423626973)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16365637789626973)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16365770839626974)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(16353579356626957)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16365965400626974)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16361453659626970)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16366617153626975)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16366068260626974)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(16366381524626974)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16366825201626975)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16366068260626974)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(16366381524626974)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16366978095626975)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16366068260626974)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(16366381524626974)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16367427672626975)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16366068260626974)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(16367151462626975)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16367614328626975)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16366068260626974)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16367840125626975)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16366068260626974)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(16367151462626975)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16368160494626975)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16367934999626975)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16368384855626976)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16367934999626975)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16369910535626977)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16370058174626977)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16370282609626977)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16370450243626977)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(16349397820626955)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16370744526626977)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16370896785626977)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16371055567626977)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16371266091626977)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16371449912626978)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16371673995626978)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16371889741626978)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16372101875626978)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16372335189626978)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16372523311626978)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16372720408626979)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16372901834626979)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16373122194626979)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16373280125626979)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16373546960626979)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16373700960626979)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(16351842135626957)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16373897493626979)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(16353579356626957)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16374084273626979)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(16354012612626959)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16374253377626980)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16374530730626980)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16374708342626980)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16374929254626980)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(16354012612626959)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16375100299626980)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(16353579356626957)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16375338438626980)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16375540959626980)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16375697362626980)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(16369012041626976)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(16354436359626960)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16376693243626981)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16375794913626980)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16377058136626981)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16375794913626980)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(16376854659626981)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16377469944626982)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16375794913626980)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(16377269338626982)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16377859071626982)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16375794913626980)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(16377703320626982)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16378095578626982)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16375794913626980)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(16377703320626982)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16378324650626982)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16375794913626980)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(16377269338626982)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16378727691626982)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16378389489626982)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16378854642626983)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(16378389489626982)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16379103940626983)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(16378389489626982)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(16366381524626974)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16379333862626983)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(16378389489626982)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(16366381524626974)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16380178660626984)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(16379426525626983)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(16379973799626984)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16380392244626984)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16379426525626983)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(16379973799626984)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16380565738626984)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(16379426525626983)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16381371139626989)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(16381236948626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16381841808626989)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16381967752626989)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16382211827626989)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16382384478626990)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16382607862626990)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(16381236948626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16382783419626990)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16382953963626990)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16383244663626990)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16383629600626990)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(16383399425626990)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16383749581626990)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(16383399425626990)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16384027682626990)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(16383399425626990)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16384196802626990)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16384430835626990)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(16383399425626990)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16384572210626990)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(16383399425626990)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16384777315626991)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16380869980626988)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16385357949626991)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16384859035626991)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(16385151817626991)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16385552339626991)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16384859035626991)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(16385151817626991)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16385987031626992)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16386166540626992)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16386368877626992)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16386593079626992)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16386770703626992)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16387199817626992)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(16387046107626992)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16387395713626992)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16387632546626993)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16387761311626993)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16387997040626993)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16388186611626993)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16385684812626991)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16388771363626994)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(16388561861626994)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16389212896626994)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(16389019045626994)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16389361057626995)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(16389019045626994)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16389550433626995)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(16389019045626994)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16390044782626995)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(16389812874626995)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16390210566626995)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(16389812874626995)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16390365311626995)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(16388561861626994)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16390609086626995)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16390799042626996)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16388254384626993)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(16389019045626994)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16391428852626996)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16391607944626997)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16391758004626997)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16392035570626997)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16392160423626997)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16392421971626998)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16392592420626998)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16392802599626998)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16390938319626996)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16393232611626998)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16393373718626999)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16393585471626999)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16393764064626999)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16394004261626999)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16394173648626999)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16394441041626999)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16394575240626999)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16392938681626998)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(16391171945626996)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16395014893627000)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(16394686791626999)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(16381236948626989)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16395380127627000)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16395637387627000)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16395799806627000)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16396168058627000)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(16395998333627000)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16396431029627000)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(16395998333627000)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16396612875627001)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(16381236948626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16396804269627001)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16397000721627001)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(16381236948626989)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16397407568627001)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(16397162523627001)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16397564218627002)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(16397162523627001)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16397827219627002)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(16397162523627001)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16398241681627002)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(16398038892627002)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16398427092627002)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(16398038892627002)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16398618065627002)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16398814203627002)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(16381236948626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16399033302627003)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(16381236948626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16399156875627003)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16399417077627003)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(16397162523627001)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16399590940627003)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(16381569812626989)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16399776364627003)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(16395129796627000)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16400582542627006)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16401010055627007)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16401226206627007)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16401446276627007)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16401585621627007)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16401839445627007)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16402047082627007)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16402187555627007)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16402373743627008)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16402823273627009)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(16402601818627009)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16403037701627010)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(16402601818627009)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16403169746627010)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(16402601818627009)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16403418255627012)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16403555747627012)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(16402601818627009)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16403750618627012)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(16402601818627009)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16403948360627012)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16400097722627004)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16404438099627013)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16404592550627013)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16404811693627013)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16405243297627013)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(16405030802627013)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16405351506627013)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(16405030802627013)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16405638781627013)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16405774536627013)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16405999194627013)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16406385064627013)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(16406181873627013)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16406630208627014)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(16406181873627013)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16406793748627014)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(16406181873627013)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16407196521627014)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(16406958300627014)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16407362850627015)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(16406958300627014)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16407597080627015)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16407750986627015)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16407952275627015)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16408202332627015)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16408440127627015)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(16406181873627013)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16408628077627015)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16408764361627015)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16408958974627015)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16404084516627012)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16409437040627015)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16409643792627015)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16409762481627015)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16409981734627016)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16410214110627016)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16410621166627016)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(16410433501627016)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16410847574627016)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16410978461627016)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16411219614627016)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16411382941627016)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16412019251627017)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16411687192627017)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16412438501627018)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(16412053106627018)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16412644648627018)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(16412053106627018)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16412817808627018)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(16412053106627018)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16413031914627018)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(16412053106627018)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16413447665627019)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16413055643627018)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16413555424627019)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16413055643627018)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16413820197627019)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16413055643627018)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16413996331627019)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16413055643627018)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16414372653627019)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16413055643627018)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(16414183358627019)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16414578192627020)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16413055643627018)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(16414183358627019)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16414992973627020)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(16414706730627020)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16415158195627020)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16414706730627020)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16415393197627020)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16414706730627020)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16415597133627020)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16414706730627020)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16416191993627020)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(16415731934627020)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(16415994981627020)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16416584959627021)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16415731934627020)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(16416389367627020)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16416803954627021)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(16415731934627020)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(16415994981627020)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16416995795627021)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16415731934627020)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(16416389367627020)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16417244404627021)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16415731934627020)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(16416389367627020)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16417795493627021)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16417291533627021)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(16417560315627021)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16418020675627022)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16417291533627021)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(16417560315627021)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16418192934627022)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(16417291533627021)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(16417560315627021)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16418385106627022)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16417291533627021)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16418765999627022)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16418544286627022)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16419201601627022)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(16418912230627022)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(16400822337627007)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16419365841627022)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16418912230627022)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(16406958300627014)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16419582493627022)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16418912230627022)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(16406958300627014)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16419810342627023)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16418912230627022)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(16410433501627016)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16419975332627023)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(16418912230627022)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16420247514627023)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(16418912230627022)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(16400348100627006)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16420368872627023)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(16418912230627022)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(16410433501627016)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16421804053627030)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(16421601456627030)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16422047077627030)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(16421601456627030)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16423915955627057)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(16423651878627056)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16424268933627057)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(16424087901627057)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16424535637627057)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(16423651878627056)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16424657675627057)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(16424087901627057)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16424913312627057)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(16423651878627056)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16425070838627057)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(16424087901627057)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16425269263627057)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(16423651878627056)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16425502594627057)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(16424087901627057)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16425887473627058)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(16425724198627057)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16426336245627058)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(16426087419627058)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16426451991627058)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(16425724198627057)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16426692388627059)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(16426087419627058)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16426873940627059)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(16425724198627057)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16427132492627059)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(16426087419627058)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16427289188627059)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(16425724198627057)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16427542126627059)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(16426087419627058)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16427865389627059)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(16427737614627059)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16428323746627060)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(16428047750627059)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16428520400627060)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(16427737614627059)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16428737361627060)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(16428047750627059)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16428894317627060)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(16427737614627059)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16429114120627060)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(16428047750627059)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16429315031627060)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(16427737614627059)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16429510056627060)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(16428047750627059)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16429920880627061)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(16429745562627060)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16430342001627061)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(16430117229627061)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16430536753627061)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(16429745562627060)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16430707807627061)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(16430117229627061)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16430863553627062)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(16429745562627060)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16431121502627062)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(16430117229627061)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16431254634627062)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(16429745562627060)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16431536366627062)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(16430117229627061)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16431881360627062)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(16431705561627062)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16432327202627062)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(16432142078627062)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16432679795627063)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(16432459975627062)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16433111593627063)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(16432918740627063)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16433528976627063)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(16433289052627063)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16433921273627063)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(16433667445627063)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16434271197627063)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(16434116400627063)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16434491853627064)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(16434116400627063)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16434660720627064)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(16432142078627062)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16434915553627064)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(16432459975627062)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16435117002627064)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(16432918740627063)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16435288912627064)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(16433289052627063)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16435684253627064)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(16435512751627064)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16435875355627065)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(16435512751627064)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16436135195627065)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(16435512751627064)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16436303274627065)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(16431705561627062)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16436510674627065)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(16434116400627063)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16436677534627065)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(16433667445627063)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16437066984627065)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(16436885430627065)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16437268958627065)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(16431705561627062)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16437522554627065)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(16433667445627063)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16437678865627065)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(16431705561627062)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16438084341627066)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(16437862741627066)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16438521646627066)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(16438278966627066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16438877604627066)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(16438713764627066)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16439269554627066)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(16439108741627066)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16439461491627067)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(16439108741627066)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16439922177627067)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(16439661065627067)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16440055636627067)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(16438278966627066)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16440507611627067)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(16440317064627067)
,p_template_types=>'FIELD'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16440944633627067)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(16440701128627067)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16441263074627068)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(16441142064627067)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16441692314627068)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(16441480203627068)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16441945422627068)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16442121797627069)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(16440317064627067)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(16442453211627069)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(16442346582627069)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16444820296627120)
,p_build_option_name=>unistr('\6A5F\80FD: \30A2\30AF\30BB\30B9\5236\5FA1')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>unistr('\30ED\30FC\30EB\30FB\30D9\30FC\30B9\30FB\30E6\30FC\30B6\30FC\8A8D\8A3C\3092\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\7D44\307F\8FBC\307F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30ED\30FC\30EB\3078\306E\30E6\30FC\30B6\30FC\540D\30DE\30C3\30D4\30F3\30B0\3092\7BA1\7406\3057\307E\3059\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16444914789627120)
,p_build_option_name=>unistr('\6A5F\80FD: \30A2\30AF\30C6\30A3\30D3\30C6\30A3\30FB\30EC\30DD\30FC\30C8')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>unistr('\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30C6\30A3\30D3\30C6\30A3\306B\95A2\3059\308B\591A\6570\306E\30EC\30DD\30FC\30C8\304A\3088\3073\30C1\30E3\30FC\30C8\3092\542B\3081\307E\3059\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16444988891627120)
,p_build_option_name=>unistr('\6A5F\80FD: \30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>unistr('\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\304C\4E00\822C\7684\306A\30B3\30E1\30F3\30C8\3092\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\7BA1\7406\8005\304A\3088\3073\958B\767A\8005\306B\9001\4FE1\3059\308B\305F\3081\306E\30E1\30AB\30CB\30BA\30E0\3092\63D0\4F9B\3057\307E\3059\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16445187386627120)
,p_build_option_name=>unistr('\6A5F\80FD: \69CB\6210\30AA\30D7\30B7\30E7\30F3')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\7BA1\7406\8005\304C\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\5185\304B\3089Application Express\30D3\30EB\30C9\30FB\30AA\30D7\30B7\30E7\30F3\306B\95A2\9023\4ED8\3051\3089\308C\305F\7279\5B9A\306E\6A5F\80FD\3092\6709\52B9\5316\307E\305F\306F\7121\52B9\5316\3067\304D\308B\3088\3046\306B\3057\307E\3059\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16445519419627120)
,p_build_option_name=>unistr('\6A5F\80FD: \60C5\5831\30DA\30FC\30B8')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>unistr('\300C\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\3064\3044\3066\300D\30DA\30FC\30B8\3002')
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(16445640864627120)
,p_build_option_name=>unistr('\6A5F\80FD: \30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\306E\9078\629E')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>unistr('\7BA1\7406\8005\304C\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\30C7\30D5\30A9\30EB\30C8\306E\30AB\30E9\30FC\30FB\30B9\30AD\30FC\30E0(\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB)\3092\9078\629E\3067\304D\308B\3088\3046\306B\3057\307E\3059\3002\7BA1\7406\8005\306F\3001\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306B\305D\306E\72EC\81EA\306E\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\306E\9078\629E\3092\8A31\53EF\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002 ')
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(16448540563627130)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>unistr('\3053\306E\524A\9664\64CD\4F5C\3092\5B9F\884C\3057\307E\3059\304B\3002')
);
end;
/
prompt --application/shared_components/email/templates/tcwebemailcreate
begin
wwv_flow_api.create_email_template(
 p_id=>wwv_flow_api.id(7988656082748445)
,p_name=>'TCWEBEMAILCREATE'
,p_static_id=>'TCWEBEMAILCREATE'
,p_subject=>unistr('[TCWEB \65B0\898F\4F5C\6210\901A\77E5] #TITLE#')
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('#USER#\3055\3093\304C\3001\4EE5\4E0B\306E\6587\66F8\3092\65B0\898F\767B\9332\3057\307E\3057\305F\3002<br/>'),
'#TITLE#<br/>',
'#LINK#<br/>'))
);
end;
/
prompt --application/shared_components/email/templates/tcwebemailupdate
begin
wwv_flow_api.create_email_template(
 p_id=>wwv_flow_api.id(7988948103752623)
,p_name=>'TCWEBEMAILUPDATE'
,p_static_id=>'TCWEBEMAILUPDATE'
,p_subject=>unistr('[TCWEB\66F4\65B0\901A\77E5] #TITLE#')
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('#USER#\3055\3093\304C\3001\4EE5\4E0B\306E\30C9\30AD\30E5\30E1\30F3\30C8\3092\66F4\65B0\3057\307E\3057\305F\3002<br/>'),
'#TITLE#<br/>',
'#LINK#<br/>'))
);
end;
/
prompt --application/shared_components/security/authentications/application_express認証
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(16322123455626915)
,p_name=>unistr('Application Express\8A8D\8A3C')
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/nl_detora_apex_copytoclipboard
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(16753794907021065)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.DETORA.APEX.COPYTOCLIPBOARD'
,p_display_name=>'Copy to clipboard'
,p_category=>'EFFECT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','NL.DETORA.APEX.COPYTOCLIPBOARD'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#apexcopytoclipboard.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX Resize Dialog',
' * Version: 1.0 (05-01-2016)',
' * Author:  Dick Dral',
' *-------------------------------------',
'*/',
'FUNCTION render_copy_to_clipboard(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                               p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  l_result       apex_plugin.t_dynamic_action_render_result;',
'  --',
'BEGIN',
'  --',
'  l_result.javascript_function := ''apexcopytoclipboard.doIt'';',
'  --',
'  RETURN l_result;',
'  --',
'END render_copy_to_clipboard;'))
,p_api_version=>1
,p_render_function=>'render_copy_to_clipboard'
,p_standard_attributes=>'ITEM:REQUIRED'
,p_substitute_attributes=>true
,p_reference_id=>175017557287884164
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>6
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F204150455820436F707920746F20436C6970626F6172640A2F2F20417574686F723A204469636B204472616C20284465746F7261290A2F2F2056657273696F6E3A20312E300A0A2F2F20676C6F62616C206E616D6573706163650A76617220617065';
wwv_flow_api.g_varchar2_table(2) := '78636F7079746F636C6970626F617264203D207B0A0A636F70795F746F5F636C6970626F6172643A2066756E6374696F6E202820656C656D20290A7B0A0920202F2F206372656174652068696464656E207465787420656C656D656E742C206966206974';
wwv_flow_api.g_varchar2_table(3) := '20646F65736E277420616C72656164792065786973740A20202020766172207461726765744964203D20225F68696464656E436F7079546578745F223B0A20202020766172206973496E707574203D20656C656D2E7461674E616D65203D3D3D2022494E';
wwv_flow_api.g_varchar2_table(4) := '50555422207C7C20656C656D2E7461674E616D65203D3D3D20225445585441524541223B0A20202020766172206F72696753656C656374696F6E53746172742C206F72696753656C656374696F6E456E643B0A20202020696620286973496E7075742920';
wwv_flow_api.g_varchar2_table(5) := '7B0A20202020202020202F2F2063616E206A7573742075736520746865206F726967696E616C20736F7572636520656C656D656E7420666F72207468652073656C656374696F6E20616E6420636F70790A2020202020202020746172676574203D20656C';
wwv_flow_api.g_varchar2_table(6) := '656D3B0A20202020202020206F72696753656C656374696F6E5374617274203D20656C656D2E73656C656374696F6E53746172743B0A20202020202020206F72696753656C656374696F6E456E64203D20656C656D2E73656C656374696F6E456E643B0A';
wwv_flow_api.g_varchar2_table(7) := '202020207D20656C7365207B0A20202020202020202F2F206D7573742075736520612074656D706F7261727920666F726D20656C656D656E7420666F72207468652073656C656374696F6E20616E6420636F70790A202020202020202074617267657420';
wwv_flow_api.g_varchar2_table(8) := '3D20646F63756D656E742E676574456C656D656E7442794964287461726765744964293B0A2020202020202020696620282174617267657429207B0A20202020202020202020202076617220746172676574203D20646F63756D656E742E637265617465';
wwv_flow_api.g_varchar2_table(9) := '456C656D656E742822746578746172656122293B0A2020202020202020202020207461726765742E7374796C652E706F736974696F6E203D20226162736F6C757465223B0A2020202020202020202020207461726765742E7374796C652E6C656674203D';
wwv_flow_api.g_varchar2_table(10) := '20222D393939397078223B0A2020202020202020202020207461726765742E7374796C652E746F70203D202230223B0A2020202020202020202020207461726765742E6964203D2074617267657449643B0A202020202020202020202020646F63756D65';
wwv_flow_api.g_varchar2_table(11) := '6E742E626F64792E617070656E644368696C6428746172676574293B0A20202020202020207D0A20202020202020207461726765742E74657874436F6E74656E74203D20656C656D2E74657874436F6E74656E743B0A202020207D0A202020202F2F2073';
wwv_flow_api.g_varchar2_table(12) := '656C6563742074686520636F6E74656E740A202020207661722063757272656E74466F637573203D20646F63756D656E742E616374697665456C656D656E743B0A202020207461726765742E666F63757328293B0A202020207461726765742E73657453';
wwv_flow_api.g_varchar2_table(13) := '656C656374696F6E52616E676528302C207461726765742E76616C75652E6C656E677468293B0A202020200A202020202F2F20636F7079207468652073656C656374696F6E0A2020202076617220737563636565643B0A20202020747279207B0A202020';
wwv_flow_api.g_varchar2_table(14) := '2009202073756363656564203D20646F63756D656E742E65786563436F6D6D616E642822636F707922293B0A202020207D206361746368286529207B0A202020202020202073756363656564203D2066616C73653B0A202020207D0A202020202F2F2072';
wwv_flow_api.g_varchar2_table(15) := '6573746F7265206F726967696E616C20666F6375730A202020206966202863757272656E74466F63757320262620747970656F662063757272656E74466F6375732E666F637573203D3D3D202266756E6374696F6E2229207B0A20202020202020206375';
wwv_flow_api.g_varchar2_table(16) := '7272656E74466F6375732E666F63757328293B0A202020207D0A202020200A20202020696620286973496E70757429207B0A20202020202020202F2F20726573746F7265207072696F722073656C656374696F6E0A2020202020202020656C656D2E7365';
wwv_flow_api.g_varchar2_table(17) := '7453656C656374696F6E52616E6765286F72696753656C656374696F6E53746172742C206F72696753656C656374696F6E456E64293B0A202020207D20656C7365207B0A20202020202020202F2F20636C6561722074656D706F7261727920636F6E7465';
wwv_flow_api.g_varchar2_table(18) := '6E740A20202020202020207461726765742E74657874436F6E74656E74203D2022223B0A202020207D0A2020202072657475726E20737563636565643B0A7D2C0A0A202020202F2F2066756E6374696F6E207468617420676574732063616C6C65642066';
wwv_flow_api.g_varchar2_table(19) := '726F6D20706C7567696E0A20202020646F49743A2066756E6374696F6E2829207B0A20202020202020202F2F20706C7567696E20617474726962757465730A202020202020202076617220646154686973203D20746869733B0A20202020202020207661';
wwv_flow_api.g_varchar2_table(20) := '722076456C656D656E74734172726179203D206461546869732E6166666563746564456C656D656E74733B0A202020202020202076617220656C656D203D2076456C656D656E747341727261795B305D3B0A0909747279207B20766172206C6F63616C5F';
wwv_flow_api.g_varchar2_table(21) := '6C6F6767696E67203D202820706167655F6C6F6767696E672029203F2074727565203A2066616C73653B0A09097D206361746368286529207B206C6F63616C5F6C6F6767696E67203D2066616C73653B7D0A090969662028206C6F63616C5F6C6F676769';
wwv_flow_api.g_varchar2_table(22) := '6E67290A09097B20636F6E736F6C652E6C6F672827456C656D656E74207769746820636F6E74656E7420746F20626520636F706965643A272C656C656D293B207D0A202020202020202061706578636F7079746F636C6970626F6172642E636F70795F74';
wwv_flow_api.g_varchar2_table(23) := '6F5F636C6970626F61726428656C656D293B0A202020207D0A7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(16754876152021092)
,p_plugin_id=>wwv_flow_api.id(16753794907021065)
,p_file_name=>'apexcopytoclipboard.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(16443158785627075)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7')
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:5:&SESSION.:B_INIT:NO:5,RIR::'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(16322917747626920)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(16411687192627017)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(16442922040627073)
,p_nav_bar_list_template_id=>wwv_flow_api.id(16411498223627016)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_step_title=>unistr('\30B0\30ED\30FC\30D0\30EB\30FB\30DA\30FC\30B8 - \30C7\30B9\30AF\30C8\30C3\30D7')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134750'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\7D71\8A08\60C5\5831')
,p_step_title=>unistr('\7D71\8A08\60C5\5831')
,p_step_sub_title=>unistr('\7D71\8A08\60C5\5831')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206144531'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194748035928416469)
,p_plug_name=>unistr('\30E6\30FC\30B6\30FC\5225\30D5\30A9\30ED\30EF\30FC\6570')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16642261860992116)
,p_region_id=>wwv_flow_api.id(194748035928416469)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16643949899992125)
,p_chart_id=>wwv_flow_api.id(16642261860992116)
,p_seq=>10
,p_name=>unistr('\30D5\30A9\30ED\30EF\30FC\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_followers, username as username ',
'from tcw_followers group by username order by 1 desc',
'fetch first 10 rows only'))
,p_items_value_column_name=>'NUMBER_OF_FOLLOWERS'
,p_items_label_column_name=>'USERNAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16643438286992123)
,p_chart_id=>wwv_flow_api.id(16642261860992116)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16642775519992120)
,p_chart_id=>wwv_flow_api.id(16642261860992116)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194749058090416479)
,p_plug_name=>unistr('\66F4\65B0\901A\77E5\306E\8A2D\5B9A\3055\308C\305F\6587\66F8')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16644856228992137)
,p_region_id=>wwv_flow_api.id(194749058090416479)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16646566992992138)
,p_chart_id=>wwv_flow_api.id(16644856228992137)
,p_seq=>10
,p_name=>unistr('\901A\77E5\8A2D\5B9A\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select count(*)\3000as number_of_notif, l.obj_name as title '),
'from tcw_doc_notifications n join tcw_documents l on n.link_num = l.link_num ',
'group by l.obj_name order by 1 desc ',
'fetch first 10 rows only'))
,p_items_value_column_name=>'NUMBER_OF_NOTIF'
,p_items_label_column_name=>'TITLE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16645434095992137)
,p_chart_id=>wwv_flow_api.id(16644856228992137)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16646007585992138)
,p_chart_id=>wwv_flow_api.id(16644856228992137)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194749538773416484)
,p_plug_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\306E\591A\3044\6587\66F8')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16647461907992139)
,p_region_id=>wwv_flow_api.id(194749538773416484)
,p_chart_type=>'bar'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16649202208992141)
,p_chart_id=>wwv_flow_api.id(16647461907992139)
,p_seq=>10
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\76F4\8FD1)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads, l.obj_name as title ',
'from tcw_download_history h join tcw_documents l on h.link_num = l.link_num ',
'where date_download > (sysdate - :P1_DAYS1) group by l.obj_name order by 1 desc ',
'fetch first :P1_TOP1 rows only',
''))
,p_ajax_items_to_submit=>'P1_DAYS1,P1_TOP1'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'TITLE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P1_DAYS1'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16649782860992142)
,p_chart_id=>wwv_flow_api.id(16647461907992139)
,p_seq=>20
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\671F\9593)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads, l.obj_name as title ',
'from tcw_download_history h join tcw_documents l on h.link_num = l.link_num ',
'where date_download between :P1_PERIOD_START1 and :P1_PERIOD_END1',
'group by l.obj_name order by 1 desc ',
'fetch first :P1_TOP1 rows only',
''))
,p_ajax_items_to_submit=>'P1_PERIOD_START1,P1_PERIOD_END1,P1_TOP1'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'TITLE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P1_DAYS1'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16648007176992140)
,p_chart_id=>wwv_flow_api.id(16647461907992139)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16648582357992140)
,p_chart_id=>wwv_flow_api.id(16647461907992139)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194750387956416492)
,p_plug_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\306E\591A\3044\8CC7\6599\4F5C\6210\8005')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16652153863992151)
,p_region_id=>wwv_flow_api.id(194750387956416492)
,p_chart_type=>'bar'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16653885072992152)
,p_chart_id=>wwv_flow_api.id(16652153863992151)
,p_seq=>10
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\76F4\8FD1)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads, username',
'from',
' (',
'  select 1 as cnt, ',
'  case ',
'  when h.last_updated_by is null then l.upd_username',
'  else h.last_updated_by',
'  end username',
'  from tcw_documents l join tcw_download_history h on l.link_num = h.link_num',
'  where h.date_download > (sysdate - :P1_DAYS2)',
'  ) t',
' group by username order by 1 desc ',
'fetch first :P1_TOP2 rows only',
''))
,p_ajax_items_to_submit=>'P1_DAYS2'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'USERNAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P1_DAYS2'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16654498161992153)
,p_chart_id=>wwv_flow_api.id(16652153863992151)
,p_seq=>20
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6570(\671F\9593)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) as number_of_downloads, username',
'from',
' (',
'  select 1 as cnt, ',
'  case ',
'  when h.last_updated_by is null then l.upd_username',
'  else h.last_updated_by',
'  end username',
'  from tcw_documents l join tcw_download_history h on l.link_num = h.link_num',
'  where h.date_download between :P1_PERIOD_START2 and :P1_PERIOD_END2',
'  ) t',
' group by username order by 1 desc ',
'fetch first :P1_TOP2 rows only',
''))
,p_ajax_items_to_submit=>'P1_PERIOD_START2,P1_PERIOD_END2,P1_TOP2'
,p_items_value_column_name=>'NUMBER_OF_DOWNLOADS'
,p_items_label_column_name=>'USERNAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P1_DAYS2'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16652652464992151)
,p_chart_id=>wwv_flow_api.id(16652153863992151)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16653316549992152)
,p_chart_id=>wwv_flow_api.id(16652153863992151)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194907935363214203)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194922277619380765)
,p_plug_name=>unistr('\65E5\6B21\30C0\30A6\30F3\30ED\30FC\30C9\6570')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16657252754992157)
,p_region_id=>wwv_flow_api.id(194922277619380765)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16659035677992158)
,p_chart_id=>wwv_flow_api.id(16657252754992157)
,p_seq=>10
,p_name=>unistr('\6587\66F8\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(link_num) as cnt, trunc(date_download) as ddate',
'from TCW_DOWNLOAD_HISTORY ',
'where date_download > (sysdate - :P1_DAYS3)',
'group by trunc(date_download)'))
,p_ajax_items_to_submit=>'P1_DAYS3'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'DDATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16657790191992157)
,p_chart_id=>wwv_flow_api.id(16657252754992157)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16658365104992158)
,p_chart_id=>wwv_flow_api.id(16657252754992157)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194923091377380773)
,p_plug_name=>unistr('\65E5\6B21\691C\7D22\6570')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16660335759992160)
,p_region_id=>wwv_flow_api.id(194923091377380773)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16662039164992162)
,p_chart_id=>wwv_flow_api.id(16660335759992160)
,p_seq=>10
,p_name=>unistr('\691C\7D22\6570')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(distinct username) as cnt, trunc(date_query) as ddate',
' from TCW_QUERY_HISTORY where term_position = 1',
'  and date_query > (sysdate - :P1_DAYS4)',
'group by trunc(date_query);'))
,p_ajax_items_to_submit=>'P1_DAYS4'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'DDATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16660828290992160)
,p_chart_id=>wwv_flow_api.id(16660335759992160)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16661402231992161)
,p_chart_id=>wwv_flow_api.id(16660335759992160)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194943961525380782)
,p_plug_name=>unistr('\65E5\6B21\306E\5229\7528\8005\6570(\91CD\8907\7121\3057)')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16663318892992163)
,p_region_id=>wwv_flow_api.id(194943961525380782)
,p_chart_type=>'bar'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16664998716992165)
,p_chart_id=>wwv_flow_api.id(16663318892992163)
,p_seq=>10
,p_name=>unistr('\5229\7528\8005\6570')
,p_data_source_type=>'SQL'
,p_data_source=>'select count(distinct apex_user) as cnt, trunc(view_date) as ddate from apex_workspace_activity_log where application_name = ''TCWEB'' group by trunc(view_date);'
,p_ajax_items_to_submit=>'P1_DAYS2'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'DDATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16663805859992164)
,p_chart_id=>wwv_flow_api.id(16663318892992163)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16664368189992164)
,p_chart_id=>wwv_flow_api.id(16663318892992163)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16650406598992143)
,p_name=>'P1_DAYS1'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(194749538773416484)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD17\65E5;7,\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16650844229992148)
,p_name=>'P1_TOP1'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(194749538773416484)
,p_item_default=>'10'
,p_prompt=>unistr('\8868\793A\6570')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16651227610992148)
,p_name=>'P1_PERIOD_START1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(194749538773416484)
,p_prompt=>unistr('\671F\9593\958B\59CB')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16651594817992149)
,p_name=>'P1_PERIOD_END1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(194749538773416484)
,p_prompt=>unistr('\671F\9593\7D42\4E86')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16655077359992154)
,p_name=>'P1_DAYS2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(194750387956416492)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD17\65E5;7,\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16655517781992154)
,p_name=>'P1_TOP2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(194750387956416492)
,p_item_default=>'10'
,p_prompt=>unistr('\8868\793A\6570')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16655935664992155)
,p_name=>'P1_PERIOD_START2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(194750387956416492)
,p_prompt=>unistr('\671F\9593\958B\59CB')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16656258932992155)
,p_name=>'P1_PERIOD_END2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(194750387956416492)
,p_prompt=>unistr('\671F\9593\7D42\4E86')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'Y'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16659575283992159)
,p_name=>'P1_DAYS3'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(194922277619380765)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90,\76F4\8FD1180\65E5;180,\904E\53BB1\5E74\9593;365')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16662633222992162)
,p_name=>'P1_DAYS4'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(194923091377380773)
,p_item_default=>'7'
,p_prompt=>unistr('\671F\9593')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\76F4\8FD130\65E5;30,\76F4\8FD190\65E5;90,\76F4\8FD1180\65E5;180,\904E\53BB1\5E74\9593;365')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16666160839992174)
,p_name=>'Refresh Chart 1-1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16666692735992177)
,p_event_id=>wwv_flow_api.id(16666160839992174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194749538773416484)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16667146340992177)
,p_name=>unistr('\671F\9593\5909\66F42')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16667618798992178)
,p_event_id=>wwv_flow_api.id(16667146340992177)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194750387956416492)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16668023643992178)
,p_name=>unistr('\671F\9593\5909\66F4\FF13')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16668472583992179)
,p_event_id=>wwv_flow_api.id(16668023643992178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194922277619380765)
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16668892992992179)
,p_name=>unistr('\671F\9593\5909\66F4\FF14')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16669401513992180)
,p_event_id=>wwv_flow_api.id(16668892992992179)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194923091377380773)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16669771680992180)
,p_name=>'Refresh Chart 1-2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_START1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16670299362992181)
,p_event_id=>wwv_flow_api.id(16669771680992180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194749538773416484)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16670682470992181)
,p_name=>'Refresh Chart 1-3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_END1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16671160823992182)
,p_event_id=>wwv_flow_api.id(16670682470992181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194749538773416484)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16671560902992182)
,p_name=>'Show Period'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS1'
,p_condition_element=>'P1_DAYS1'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16672136138992183)
,p_event_id=>wwv_flow_api.id(16671560902992182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START1,P1_PERIOD_END1'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16672531797992183)
,p_name=>'Hide Period'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS1'
,p_condition_element=>'P1_DAYS1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16673017508992184)
,p_event_id=>wwv_flow_api.id(16672531797992183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START1,P1_PERIOD_END1'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16673405873992184)
,p_name=>'Refresh Chart 1-4'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_TOP1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16673917774992184)
,p_event_id=>wwv_flow_api.id(16673405873992184)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194749538773416484)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16674310380992185)
,p_name=>'Refresh Chart 2-4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_TOP2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16674804121992185)
,p_event_id=>wwv_flow_api.id(16674310380992185)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194750387956416492)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16675202983992185)
,p_name=>'Refresh Chart 2-1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_START2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16675669203992185)
,p_event_id=>wwv_flow_api.id(16675202983992185)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194750387956416492)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16676133744992186)
,p_name=>'Refresh Chart 2-2'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PERIOD_END2'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16676562861992186)
,p_event_id=>wwv_flow_api.id(16676133744992186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(194750387956416492)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16676988118992187)
,p_name=>'Show Period 2'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS2'
,p_condition_element=>'P1_DAYS2'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16677521199992187)
,p_event_id=>wwv_flow_api.id(16676988118992187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START2,P1_PERIOD_END2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16677896084992187)
,p_name=>'Hide Period 2'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DAYS2'
,p_condition_element=>'P1_DAYS2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16678364815992188)
,p_event_id=>wwv_flow_api.id(16677896084992187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_PERIOD_START2,P1_PERIOD_END2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\8CC7\6599\306E\767B\9332\7DE8\96C6')
,p_step_title=>unistr('\8CC7\6599\306E\767B\9332\7DE8\96C6')
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>unistr('\8CC7\6599\306E\767B\9332\7DE8\96C6')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(16341338282626946)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206160729'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(149606732471463315)
,p_plug_name=>unistr('\95A2\9023\30EA\30F3\30AF\306E\7DE8\96C6')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>'select doc_id, link_type, link_url, note from tcw_doc_links where doc_id = :P2_LINK_NUM'
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P2_LINK_NUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_LINK_NUM'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(149606874859463317)
,p_name=>'DOC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOC_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P2_LINK_NUM'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(149606967343463318)
,p_name=>'LINK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_TYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\30EA\30F3\30AF\5148')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(149607051648463319)
,p_name=>'LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_URL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'URL'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(149607191821463320)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(149607312195463321)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(149607345484463322)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(191663421541791519)
,p_name=>'NOTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Note'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(149606816714463316)
,p_internal_uid=>135959668988870373
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>false
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.initActions = function( actions ) {',
'        actions.hide("show-download-dialog");',
'        actions.hide("chart-view");',
'    }',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(149839908341469045)
,p_interactive_grid_id=>wwv_flow_api.id(149606816714463316)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(149839953422469047)
,p_report_id=>wwv_flow_api.id(149839908341469045)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(149855099932158330)
,p_view_id=>wwv_flow_api.id(149839953422469047)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(149607191821463320)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(149855555617158357)
,p_view_id=>wwv_flow_api.id(149839953422469047)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(149607312195463321)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(149860463188469066)
,p_view_id=>wwv_flow_api.id(149839953422469047)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(149606874859463317)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(149860899013469086)
,p_view_id=>wwv_flow_api.id(149839953422469047)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(149606967343463318)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>120
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(149861419521469091)
,p_view_id=>wwv_flow_api.id(149839953422469047)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(149607051648463319)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(193754600383185551)
,p_view_id=>wwv_flow_api.id(149839953422469047)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(191663421541791519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191661723353791502)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191664613127791531)
,p_plug_name=>unistr('\95A2\9023\30EA\30F3\30AF\306E\7DE8\96C6')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\95A2\9023\30EA\30F3\30AF\306E\7DE8\96C6\306F\8CC7\6599\3092\4E00\65E6\767B\9332\3057\305F\5F8C\306B\5B9F\65BD\3057\3066\304F\3060\3055\3044\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P2_LINK_NUM'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(197276576407394744)
,p_plug_name=>'Manage Document'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16694744796011810)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(197276576407394744)
,p_button_name=>'B_ABSTRACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\6982\8981\306E\307F\66F4\65B0')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22:P22_LINK_NUM:&P2_LINK_NUM.'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16695055665011811)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(197276576407394744)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P2_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16695457575011813)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(197276576407394744)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\30AD\30E3\30F3\30BB\30EB')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16695851002011813)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(197276576407394744)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\767B\9332')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16696253498011814)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(197276576407394744)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(''本当に削除しますか？'',''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16696690402011814)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(197276576407394744)
,p_button_name=>'B_ACL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\7DE8\96C6\6A29\9650\306E\5272\5F53')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_LINK_NUM:&P2_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from tcw_documents where link_num = :P2_LINK_NUM and reg_username = :APP_USER',
'union',
'select 1 from tcw_documents where link_num = :P2_LINK_NUM and upd_username = :APP_USER',
'union',
'select 1 from tcw_doc_acls where link_num = :P2_LINK_NUM and user_name = :APP_USER'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16709696234011845)
,p_branch_name=>'Go To Page 3 - CREATE'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_LINK_NUM:&P2_LINK_NUM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16695851002011813)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16708941870011844)
,p_branch_name=>'Go To Page 3 - SAVE'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_LINK_NUM:&P2_LINK_NUM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16695055665011811)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16709332920011845)
,p_branch_name=>'Go To Page 8 - DELETE'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_LINK_NUM:&P2_LINK_NUM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16696253498011814)
,p_branch_sequence=>21
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16697142675011815)
,p_name=>'P2_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_use_cache_before_default=>'NO'
,p_source=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16697477415011818)
,p_name=>'P2_REG_DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>unistr('\767B\9332\65E5')
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'select reg_date from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(16420864408627027)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>unistr('\6700\521D\306B\8CC7\6599\3092\767B\9332\3057\305F\65E5\4ED8\3084\3001\8CC7\6599\304C\6709\52B9\306B\306A\308B\65E5\4ED8\3092\6307\5B9A\3057\307E\3059\3002\66F4\65B0\65E5\6642\306F\81EA\52D5\3067\66F4\65B0\3055\308C\307E\3059\3002')
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16697865959011819)
,p_name=>'P2_OBJ_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_prompt=>unistr('\30BF\30A4\30C8\30EB')
,p_source=>'select obj_name from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(16420864408627027)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\30EC\30DD\30FC\30C8\4E0A\306F\3001\30D5\30A1\30A4\30EB\306E\30C0\30A6\30F3\30ED\30FC\30C9\30EA\30F3\30AF\3001\307E\305F\306F\3001\30D5\30A1\30A4\30EB\306E\30A2\30C3\30D7\30ED\30C9\304C\306A\3044\5834\5408\306F\3001\6307\5B9A\3057\305FURL\3078\306E\30EA\30F3\30AF\306E\3069\3061\3089\304B\306B\306A\308A\307E\3059\3002')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16698758902011823)
,p_name=>'P2_OBJ_VERSION'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_item_default=>'1.0'
,p_prompt=>unistr('\30D0\30FC\30B8\30E7\30F3')
,p_source=>'select obj_version from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(16420864408627027)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\30D0\30FC\30B8\30E7\30F3\3092\5909\66F4\3057\305F\3068\304D\306E\307F\3001\8CFC\8AAD\8005\306B\66F4\65B0\901A\77E5\306E\30E1\30FC\30EB\304C\9001\4ED8\3055\308C\307E\3059\3002\307E\305F\3001\30D0\30FC\30B8\30E7\30F3\3092\5909\66F4\3057\305F\3068\304D\306F\3001\4EE5\524D\306B\30A2\30C3\30D7\30ED\30FC\30C9\3055\308C\305F\8CC7\6599\3092\30A2\30FC\30AB\30A4\30D6\3057\307E\3059\3002'),
unistr('\30D0\30FC\30B8\30E7\30F3\306F\6570\5024\3001\6587\5B57\5217\3001\3069\3061\3089\3067\3082\304B\307E\3044\307E\305B\3093\3002'),
''))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16699659542011823)
,p_name=>'P2_PREV_OBJ_VERSION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_source=>'select obj_version from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16700106204011824)
,p_name=>'P2_LINK_OBJECT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30D5\30A1\30A4\30EB')
,p_source=>'LINK_OBJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>unistr('\30A2\30C3\30D7\30ED\30FC\30C9\3059\308B\30D5\30A1\30A4\30EB\3092\6307\5B9A\3057\3066\304F\3060\3055\3044\3002')
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'CONTENT_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16700544199011824)
,p_name=>'P2_LINK_URL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_prompt=>unistr('\767B\9332\3059\308BURL')
,p_source=>'select link_url from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>250
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\30D5\30A1\30A4\30EB\3092\30A2\30C3\30D7\30ED\30FC\30C9\3057\305F\5834\5408\306F\3001\3053\3061\3089\3067\306F\306A\304F\3001\95A2\9023\30EA\30F3\30AF\3068\3057\3066\767B\9332\3057\3066\304F\3060\3055\3044\3002\30BF\30A4\30C8\30EB\306E\30EA\30F3\30AF\306F\3001\30D5\30A1\30A4\30EB\304C\512A\5148\3055\308C\307E\3059\3002')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16701434140011825)
,p_name=>'P2_OPL_CODE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_item_default=>'3'
,p_prompt=>unistr('\516C\958B\30EC\30D9\30EB')
,p_source=>'select opl_code from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LIST_OF_CONF_NAME'
,p_lov=>'.'||wwv_flow_api.id(16623104879919195)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420864408627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16701775788011827)
,p_name=>'P2_ABSTRACT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_prompt=>unistr('\6982\8981')
,p_source=>'select abstract from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16702158301011828)
,p_name=>'P2_ANNOUNCE_FLAG'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_item_default=>'1'
,p_prompt=>unistr('\65B0\7740\60C5\5831\306B...')
,p_source=>'select announce_flag from tcw_documents where link_num = :P2_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\63B2\8F09\3059\308B;1,\63B2\8F09\3057\306A\3044;0')
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16702585025011829)
,p_name=>'P2_CHECKSUM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(197276576407394744)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_util.get_hash(apex_t_varchar2(',
'  to_char(reg_date, ''YYYY-MM-DD''),',
'  obj_name, obj_version, link_url, opl_code,',
'  abstract, announce_flag)) as checksum',
'from tcw_documents',
'where link_num = :P2_LINK_NUM;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16703666331011836)
,p_validation_name=>'Verify Version'
,p_validation_sequence=>20
,p_validation=>'select 1 from tcw_doc_archives where link_num = :P2_LINK_NUM and obj_version = :P2_OBJ_VERSION'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('\904E\53BB\306B\4F7F\7528\6E08\307F\306E\30D0\30FC\30B8\30E7\30F3\304C\4F7F\308F\308C\3066\3044\308B\3088\3046\3067\3059\3002\5909\66F4\3057\3066\304F\3060\3055\3044\3002')
,p_validation_condition=>':P2_PREV_OBJ_VERSION <> :P2_OBJ_VERSION'
,p_validation_condition_type=>'SQL_EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(16695055665011811)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13026849862096820)
,p_name=>unistr('\6982\8981\7DE8\96C6\306E\30AF\30ED\30FC\30BA')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(197276576407394744)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13026969481096821)
,p_event_id=>wwv_flow_api.id(13026849862096820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(197276576407394744)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16706771984011840)
,p_process_sequence=>120
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from LINK_DATA'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P2_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16704015135011837)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Archive Previous Version'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Archive previous version.',
'begin',
'    if :P2_PREV_OBJ_VERSION <> :P2_OBJ_VERSION then',
'      insert into tcw_doc_archives(link_num, obj_version, obj_name, opl_code, file_name, content_type, owner, link_object)',
'      select l.link_num, nvl(l.obj_version, ''INITIAL_VERSION''), l.obj_name, l.opl_code, d.file_name, d.content_type, l.upd_username, d.link_object',
'      from tcw_documents l join tcw_doc_data d on l.link_num = d.link_num where l.link_num = :P2_LINK_NUM;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695055665011811)
,p_process_when=>'P2_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16706018530011839)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P2_LINK_NUM is null then',
'        select "#OWNER#"."TCW_DOCUMENTS_SEQ".nextval',
'          into :P2_LINK_NUM',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695851002011813)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16704362063011837)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New Document'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  insert into tcw_documents(link_num, reg_date, upd_date,',
'                       opl_code, obj_name, obj_version, link_url, announce_flag,',
'                       reg_username, upd_username, abstract)',
'  values(:P2_LINK_NUM, to_date(:P2_REG_DATE,''YYYY-MM-DD''), sysdate, ',
'         :P2_OPL_CODE, :P2_OBJ_NAME, :P2_OBJ_VERSION, :P2_LINK_URL, :P2_ANNOUNCE_FLAG,',
'         :APP_USER, :APP_USER, :P2_ABSTRACT);',
'  tcw_util.save_hashtags(:P2_LINK_NUM,:P2_ABSTRACT);',
'end;',
'',
'  '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695851002011813)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16704835431011838)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Document'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_checksum varchar2(200);',
'begin',
'  l_checksum := apex_util.get_hash(apex_t_varchar2(:P2_REG_DATE, :P2_OBJ_NAME, ',
'       :P2_OBJ_VERSION, :P2_LINK_URL, :P2_OPL_CODE, :P2_ABSTRACT, :P2_ANNOUNCE_FLAG));',
'  if (:P2_CHECKSUM <> l_checksum) then',
'    update tcw_documents set reg_date      = to_date(:P2_REG_DATE,''YYYY-MM-DD''),',
'                        upd_date      = sysdate,',
'                        upd_username  = :APP_USER,',
'                        opl_code      = :P2_OPL_CODE,',
'                        obj_name      = :P2_OBJ_NAME,',
'                        obj_version   = :P2_OBJ_VERSION,',
'                        link_url      = :P2_LINK_URL,',
'                        announce_flag = :P2_ANNOUNCE_FLAG,',
'                        abstract      = :P2_ABSTRACT',
'    where link_num = :P2_LINK_NUM;',
'    tcw_util.save_hashtags(:P2_LINK_NUM,:P2_ABSTRACT);',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695055665011811)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16707980771011841)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Notification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- send notification.',
'    if :P2_OPL_CODE < 6 then',
'      if :P2_PREV_OBJ_VERSION <> :P2_OBJ_VERSION then',
'        tcw_util.notify_update(p_doc_id => :P2_LINK_NUM);',
'        -- do not push the emails here.',
'        -- apex_mail.push_queue;',
'      end if;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695055665011811)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16708442384011841)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Notification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- send notification.',
'    if :P2_OPL_CODE < 6 then',
'      tcw_util.notify_update(p_doc_id => :P2_LINK_NUM, p_template => ''TCWEBEMAILCREATE'');',
'    end if;',
'    -- do not push the emails here.',
'    -- apex_mail.push_queue;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695851002011813)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16706352155011840)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOC_DATA - CREATE'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P2_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695851002011813)
,p_process_when=>'P2_LINK_OBJECT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16705566682011839)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOC_DATA - SAVE'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P2_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16695055665011811)
,p_process_when=>'P2_LINK_OBJECT'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16705190556011838)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Document'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  update tcw_documents set opl_code = 0, upd_date = sysdate, upd_username = :APP_USER',
'  where link_num = :P2_LINK_NUM;',
'  delete from tcw_doc_acls where link_num = :P2_LINK_NUM and user_name = :APP_USER;',
'  delete from tcw_doc_notifications where link_num = :P2_LINK_NUM;',
'end;',
'',
'  '))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16696253498011814)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16693421750011805)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(149606732471463315)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\95A2\9023\30EA\30F3\30AF - Save Interactive Grid Data')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16707243714011840)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Title as New Document'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('  :AI_BREADCRUMB_NAME := ''\8CC7\6599\306E\65B0\898F\767B\9332'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P2_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16707570449011841)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Title as Existing Document'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('  :AI_BREADCRUMB_NAME := ''\8CC7\6599\306E\66F4\65B0/\524A\9664'';'),
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P2_LINK_NUM'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\8CC7\6599\306E\8A73\7D30\60C5\5831')
,p_step_title=>unistr('\8CC7\6599\306E\8A73\7D30\60C5\5831')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>unistr('\8CC7\6599\306E\8A73\7D30\60C5\5831')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(16341338282626946)
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206172851'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191689868523800716)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(196765396345588894)
,p_plug_name=>'Document Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(191691801101800735)
,p_name=>unistr('\95A2\9023\30EA\30F3\30AF')
,p_parent_plug_id=>wwv_flow_api.id(196765396345588894)
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.link_type_name as link_type_name,',
'       l.link_url as link_url,',
'       l.note     as note',
'from tcw_doc_links l join tcw_link_types t on l.link_type = t.link_type_id',
'where l.doc_id = :P3_LINK_NUM order by t.link_type_name',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16726560916020991)
,p_query_column_id=>1
,p_column_alias=>'LINK_TYPE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30EA\30F3\30AF\7A2E\5225')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<a href="#LINK_URL#" target="_blank">#LINK_TYPE_NAME#</a>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16727037031020991)
,p_query_column_id=>2
,p_column_alias=>'LINK_URL'
,p_column_display_sequence=>2
,p_column_heading=>'URL'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16727382212020992)
,p_query_column_id=>3
,p_column_alias=>'NOTE'
,p_column_display_sequence=>3
,p_column_heading=>unistr('\8FFD\52A0\8AAC\660E')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(207638183762262490)
,p_plug_name=>'Update Notification'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(254158919527285437)
,p_name=>unistr('\4FEE\6B63\4F9D\983C\4E00\89A7')
,p_region_name=>'LISTOFREMARKS'
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TCW_REMARK_ID as ACTIONS,',
'"REMARK_TEXT" as COMMENT_TEXT,',
'"AUTHOR" as USER_NAME,',
'to_char(date_of_remark at local, ''YYYY-MM-DD HH24:MI'') || '' - '' || ',
'to_char(date_closed at local, ''YYYY-MM-DD HH24:MI'') as comment_date,',
'case is_closed',
'when ''Y'' then',
unistr('  ''\6E08'''),
'else',
unistr('  ''\672A'''),
'end USER_ICON,',
'null as ATTRIBUTE_1,',
'null as ATTRIBUTE_2,',
'null as ATTRIBUTE_3,',
'null as ATTRIBUTE_4',
'from "TCW_DOC_REMARKS"',
'where link_num = :P3_LINK_NUM',
'order by date_of_remark desc',
''))
,p_query_row_template=>wwv_flow_api.id(16384859035626991)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16730788740021000)
,p_query_column_id=>1
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>4
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,18:P18_TCW_REMARK_ID:#ACTIONS#'
,p_column_linktext=>'<span class="t-Icon fa&#x20;fa-pencil"></span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16731219842021001)
,p_query_column_id=>2
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16731595706021002)
,p_query_column_id=>3
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16731971675021002)
,p_query_column_id=>4
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16732413162021003)
,p_query_column_id=>5
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>5
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16732824231021003)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16733193568021003)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>7
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16733630218021004)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16733981616021004)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16717536727020965)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_CLIP_DETAIL_URL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\30AF\30EA\30C3\30D7\30DC\30FC\30C9\306B\30B3\30D4\30FC')
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-clipboard'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16728069276020994)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(207638183762262490)
,p_button_name=>'B_DOWNLOAD_HISTORY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74\3092\53C2\7167')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17,RIR:IR_LINK_NUM:&P3_LINK_NUM.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16717872689020966)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_CLIP_DOWNLOAD_URL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\30AF\30EA\30C3\30D7\30DC\30FC\30C9\306B\30B3\30D4\30FC')
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-clipboard'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16718304964020967)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_DOWNLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP:DOWNLOAD_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-download'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16728497802020995)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(207638183762262490)
,p_button_name=>'B_DOC_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('&P3_NAME_TO_FOLLOW.\3055\3093\306E\8CC7\6599\4E00\89A7')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.:5:&DEBUG.:RP,5,RIR:P0_KEYWORD:@&P3_OWNER_EMAIL.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>9
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16718682579020968)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_OPEN_REGISTERED_URL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\958B\304F')
,p_button_position=>'BODY'
,p_button_redirect_url=>'&P3_REGISTERED_URL!RAW.'
,p_button_condition=>'P3_REGISTERED_URL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-external-link'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16719051175020970)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_VERSION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\5909\66F4\5C65\6B74\306E\78BA\8A8D')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>'select 1 from tcw_doc_archives where link_num = :P3_LINK_NUM'
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16719513247020970)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_FILE_NAME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\30D5\30A1\30A4\30EB\540D\306E\66F4\65B0')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7:P7_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  lc number;',
'begin',
'  select 1 into lc from tcw_doc_data where link_num = :P3_LINK_NUM;',
'  if apex_acl.has_user_role(p_role_static_id => ''ADMINISTRATOR'') then',
'    return true;',
'  end if;',
'  select 1 into lc from tcw_documents where link_num = :P3_LINK_NUM and upd_username = :APP_USER;',
'  return true;',
'exception',
'  when no_data_found then',
'    return false;',
'end;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16719942695020971)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_UPDATE_ABST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\6982\8981\306E\307F\4FEE\6B63')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22:P22_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  lc number;',
'begin',
'  select 1 into lc from tcw_doc_data where link_num = :P3_LINK_NUM;',
'  if apex_acl.has_user_role(p_role_static_id => ''ADMINISTRATOR'') then',
'    return true;',
'  end if;',
'  select 1 into lc from tcw_documents where link_num = :P3_LINK_NUM and upd_username = :APP_USER;',
'  return true;',
'exception',
'  when no_data_found then',
'    return false;',
'end;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'fa-pencil-square-o'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16720255090020972)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\4E00\89A7\306B\623B\308B')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16720670143020973)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(196765396345588894)
,p_button_name=>'B_ACL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\7DE8\96C6\6A29\9650\306E\5272\5F53')
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13:P13_LINK_NUM:&P3_LINK_NUM.'
,p_button_condition=>'apex_acl.has_user_role(p_role_static_id => ''ADMINISTRATOR'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16734428624021005)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(254158919527285437)
,p_button_name=>'ADD_REMARK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\4FEE\6B63\4F9D\983C\306E\767B\9332')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16721081465020974)
,p_name=>'P3_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_prompt=>'Document ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16721507704020977)
,p_name=>'P3_DETAIL_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\8A73\7D30\30DA\30FC\30B8URL')
,p_source_post_computation=>'''https://tcweb.jp.xxxxxx.com/TCWEB/detail?id='' || :P3_LINK_NUM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>52
,p_tag_attributes=>'readonly="readonly"'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16721868887020979)
,p_name=>'P3_DOWNLOAD_URL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9URL')
,p_source_post_computation=>'''https://tcweb.jp.xxxxxx.com/TCWEB/download?id='' || :P3_LINK_NUM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>52
,p_tag_attributes=>'readonly="readonly"'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16722309859020979)
,p_name=>'P3_REGISTERED_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\767B\9332URL')
,p_source=>'LINK_URL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>2
,p_display_when=>'P3_REGISTERED_URL'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16722653639020980)
,p_name=>'P3_OBJ_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30BF\30A4\30C8\30EB')
,p_source=>'OBJ_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16723134748020980)
,p_name=>'P3_OBJ_VERSION'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30D0\30FC\30B8\30E7\30F3')
,p_source=>'OBJ_VERSION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16723499608020981)
,p_name=>'P3_OPL_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\516C\958B\30EC\30D9\30EB')
,p_source=>'OPL_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16723943699020982)
,p_name=>'P3_UPD_USERNAME'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\66F4\65B0\8005')
,p_source=>'UPD_USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16724299743020983)
,p_name=>'P3_CONTENT_TYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\30FB\30BF\30A4\30D7')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.description from tcw_documents l join (tcw_doc_data d join tcw_content_types t on d.content_type = t.content_type)',
'on l.link_num = d.link_num',
'where l.link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16724741045020985)
,p_name=>'P3_FILE_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_source=>'select file_name from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16725116463020986)
,p_name=>'P3_OBJ_SIZE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_prompt=>unistr('\30B5\30A4\30BA')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  case ',
'  when dbms_lob.getlength(link_object) > (1024*1024) then',
'    round(dbms_lob.getlength(link_object)/(1024*1024),1) || '' MB''',
'  when dbms_lob.getlength(link_object) > 1024 then',
'    round(dbms_lob.getlength(link_object)/1024,1) || '' KB''',
'  else',
'    dbms_lob.getlength(link_object) || '' B''',
'  end obj_size',
'from tcw_doc_data where link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'select 1 from tcw_doc_data where link_num = :P3_LINK_NUM'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16725544043020986)
,p_name=>'P3_ABST'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_prompt=>unistr('\6982\8981/\30AD\30FC\30EF\30FC\30C9')
,p_source=>'select abstract from tcw_documents where link_num = :P3_LINK_NUM'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16725859806020987)
,p_name=>'P3_ZIP_LIST'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(196765396345588894)
,p_prompt=>unistr('\5185\5BB9')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  fl apex_zip.t_files;',
'  bl blob;',
'  l_fl varchar2(4000);',
'begin',
'  select link_object into bl from tcw_doc_data where link_num = :P3_LINK_NUM;',
'  fl := apex_zip.get_files(bl, true, ''JA16SJIS'');',
'  for i in 1..fl.count',
'  loop',
'    l_fl := l_fl || chr(10) || fl(i);',
'  end loop;',
'  return l_fl;',
'exception',
'  when VALUE_ERROR then',
unistr('    return ''\6CA2\5C71\3042\3063\3066\3001\8868\793A\3067\304D\307E\305B\3093\3002'';'),
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cHeight=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from tcw_documents l join (tcw_doc_data d join tcw_content_types t on d.content_type = t.content_type)',
'on l.link_num = d.link_num',
'where l.link_num = :P3_LINK_NUM and t.content_type_alias = ''ZIP'''))
,p_display_when_type=>'EXISTS'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16728944532020995)
,p_name=>'P3_NAME_TO_FOLLOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(207638183762262490)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'         when u.last_name is null then l.upd_username',
'         else u.last_name || '' '' || u.first_name',
'       end as d',
'  from tcw_documents l left outer join tcw_user_names u on l.upd_username = u.user_name',
'where l.link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16729297785020996)
,p_name=>'P3_OWNER_EMAIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(207638183762262490)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tcw_util.get_name_part(upd_username)',
'from tcw_documents',
'where link_num = :P3_LINK_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16729743478020997)
,p_name=>'P3_NOTIFY_UPDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(207638183762262490)
,p_prompt=>unistr('\3053\306E\8CC7\6599\304C\66F4\65B0\3055\308C\305F\969B\306B\3001\30E1\30FC\30EB\306B\3066\901A\77E5\3057\307E\3059\304B\FF1F')
,p_source=>'select notify_update from tcw_doc_notifications where link_num = :P3_LINK_NUM and username = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:\306F\3044;Y')
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('\3044\3044\3048')
,p_lov_null_value=>'N'
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16730133536020998)
,p_name=>'P3_FOLLOW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(207638183762262490)
,p_prompt=>unistr('&P3_NAME_TO_FOLLOW.\3055\3093\306E\6295\7A3F\3092\30D5\30A9\30ED\30FC\3057\307E\3059\304B\FF1F')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Y'' from tcw_followers where follower = :APP_USER ',
'and username = (select upd_username from tcw_documents where link_num = :P3_LINK_NUM)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:\306F\3044;Y')
,p_grid_label_column_span=>6
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16734760815021006)
,p_name=>'P3_REMARK'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(254158919527285437)
,p_prompt=>unistr('\4FEE\6B63\5185\5BB9')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(16420712430627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16736240845021013)
,p_name=>'Copy To Clipboard'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(189390914535150309)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16736739734021018)
,p_event_id=>wwv_flow_api.id(16736240845021013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_NL.DETORA.APEX.COPYTOCLIPBOARD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_DOWNLOAD_URL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16737095231021018)
,p_name=>'Clip Detail URL'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(189390529553150308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16737566797021019)
,p_event_id=>wwv_flow_api.id(16737095231021018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_NL.DETORA.APEX.COPYTOCLIPBOARD'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_DETAIL_URL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16738000387021020)
,p_name=>'Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NOTIFY_UPDATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16738501509021021)
,p_event_id=>wwv_flow_api.id(16738000387021020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P3_NOTIFY_UPDATE = ''Y'' then',
'    update tcw_doc_notifications set notify_update = ''Y''',
'    where link_num = :P3_LINK_NUM and username = :APP_USER;',
'    if sql%rowcount = 0 then',
'      insert into tcw_doc_notifications(link_num, username, notify_update)',
'      values(:P3_LINK_NUM, :APP_USER, ''Y'');',
'    end if;',
'  else',
'    update tcw_doc_notifications set notify_update = ''N''',
'    where link_num = :P3_LINK_NUM and username = :APP_USER;',
'  end if;',
'end;'))
,p_attribute_02=>'P3_NOTIFY_UPDATE,P3_LINK_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16738903996021021)
,p_name=>'Add Remarks'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16734428624021005)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16739380966021022)
,p_event_id=>wwv_flow_api.id(16738903996021021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (:P3_LINK_NUM is not null) then',
' insert into tcw_doc_remarks(link_num, remark_text, author, date_of_remark) values(:P3_LINK_NUM, :P3_REMARK, :APP_USER, systimestamp);',
'end if;',
':P3_REMARK := '''';'))
,p_attribute_02=>'P3_REMARK,P3_LINK_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16739905158021022)
,p_event_id=>wwv_flow_api.id(16738903996021021)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16740248658021022)
,p_name=>unistr('\4FEE\6B63\4F9D\983C')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(254158919527285437)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16740782427021023)
,p_event_id=>wwv_flow_api.id(16740248658021022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(254158919527285437)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16741181683021025)
,p_name=>'Follow'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_FOLLOW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16741701509021025)
,p_event_id=>wwv_flow_api.id(16741181683021025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_email tcw_documents.upd_username%type;',
'begin',
'  select upd_username into l_email from tcw_documents where link_num = :P3_LINK_NUM;',
'  delete from tcw_followers where username = l_email and follower = :APP_USER;',
'  if :P3_FOLLOW = ''Y'' then',
'    insert into tcw_followers(username, follower) values(l_email, :APP_USER);',
'  end if;',
'end;'))
,p_attribute_02=>'P3_FOLLOW,P3_LINK_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13027094606096822)
,p_name=>unistr('\6982\8981\306E\66F4\65B0')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16719942695020971)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13027140769096823)
,p_event_id=>wwv_flow_api.id(13027094606096822)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'location.reload();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16735775696021012)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch From TCW_DOCUMENTS'
,p_attribute_02=>'TCW_DOCUMENTS'
,p_attribute_03=>'P3_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\500B\4EBA\306E\30D7\30ED\30D5\30A1\30A4\30EB')
,p_step_title=>unistr('\500B\4EBA\306E\30D7\30ED\30D5\30A1\30A4\30EB')
,p_step_sub_title=>unistr('\500B\4EBA\306E\30D7\30ED\30D5\30A1\30A4\30EB')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129145459'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194820423599255371)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194859676082454232)
,p_plug_name=>unistr('\66F4\65B0\901A\77E5\3092\8A2D\5B9A\3057\305F\6587\66F8')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TCW_DOC_NOTIF_V.LINK_NUM as LINK_NUM,',
'    TCW_DOC_NOTIF_V.OBJ_NAME as OBJ_NAME,',
'    TCW_DOC_NOTIF_V.U_EMAIL as U_EMAIL ',
' from TCW_DOC_NOTIF_V TCW_DOC_NOTIF_V',
' where TCW_DOC_NOTIF_V.USERNAME = :APP_USER'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194859913558454234)
,p_name=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_NUM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Doc#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:&LINK_NUM.'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194860026471454235)
,p_name=>'OBJ_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJ_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194860155379454236)
,p_name=>'U_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'U_EMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Owner'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194860231487454237)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194860327100454238)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194860383350454239)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(194859857073454233)
,p_internal_uid=>181212709347861290
,p_is_editable=>true
,p_edit_operations=>'d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(194866648853494245)
,p_interactive_grid_id=>wwv_flow_api.id(194859857073454233)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(194866666043494247)
,p_report_id=>wwv_flow_api.id(194866648853494245)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194850499579512487)
,p_view_id=>wwv_flow_api.id(194866666043494247)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(194860231487454237)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194850993852512503)
,p_view_id=>wwv_flow_api.id(194866666043494247)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(194860327100454238)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194867255123494267)
,p_view_id=>wwv_flow_api.id(194866666043494247)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(194859913558454234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194867684302494281)
,p_view_id=>wwv_flow_api.id(194866666043494247)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(194860026471454235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194868221812494285)
,p_view_id=>wwv_flow_api.id(194866666043494247)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(194860155379454236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194860603397454241)
,p_plug_name=>unistr('\30D5\30A9\30ED\30FC\4E2D\306E\5229\7528\8005')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select id, username, follower from tcw_followers where follower = :APP_USER'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194860802379454243)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194860899072454244)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194861045612454245)
,p_name=>'FOLLOWER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOWER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194861101223454246)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194861221106454247)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(194861322250454248)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(194860702032454242)
,p_internal_uid=>181213554306861299
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(194934662350117141)
,p_interactive_grid_id=>wwv_flow_api.id(194860702032454242)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(194934817164117142)
,p_report_id=>wwv_flow_api.id(194934662350117141)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194935311454117150)
,p_view_id=>wwv_flow_api.id(194934817164117142)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(194860802379454243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194935839839117158)
,p_view_id=>wwv_flow_api.id(194934817164117142)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(194860899072454244)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>600
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194936267964117161)
,p_view_id=>wwv_flow_api.id(194934817164117142)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(194861045612454245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194937554133120366)
,p_view_id=>wwv_flow_api.id(194934817164117142)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(194861101223454246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(194938042961120375)
,p_view_id=>wwv_flow_api.id(194934817164117142)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(194861221106454247)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(194861611305454251)
,p_plug_name=>unistr('\30D7\30ED\30D5\30A1\30A4\30EB')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(222714528419470863)
,p_plug_name=>unistr('\79C1\3092\30D5\30A9\30ED\30FC\3057\3066\3044\308B\4EBA')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select follower from tcw_followers where username = :APP_USER'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(222714570758470864)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>209067423032877921
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16767534976029955)
,p_db_column_name=>'FOLLOWER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(224216970777093134)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'31207'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FOLLOWER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(222714800480470866)
,p_plug_name=>unistr('\66F4\65B0\901A\77E5\304C\8A2D\5B9A\3055\308C\3066\3044\308B\79C1\306E\6587\66F8')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TCW_DOC_NOTIF_V.LINK_NUM as LINK_NUM,',
'    TCW_DOC_NOTIF_V.OBJ_NAME as OBJ_NAME,',
'    TCW_DOC_NOTIF_V.USERNAME as USERNAME ',
' from TCW_DOC_NOTIF_V TCW_DOC_NOTIF_V',
' where TCW_DOC_NOTIF_V.U_EMAIL = :APP_USER'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(222714934049470867)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>209067786323877924
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16768632422029970)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16769032127029971)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Title'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16769406374029971)
,p_db_column_name=>'USERNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\8A2D\5B9A\3057\305F\4EBA')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(224220846911130989)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'31226'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_NAME:USERNAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16763615498029942)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(194861611305454251)
,p_button_name=>'B_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16763961809029942)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(194861611305454251)
,p_button_name=>'B_MY_DOWNLOAD_HISTORY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\79C1\306E\8CC7\6599\306E\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:IR_LAST_UPDATED_BY:&APP_USER.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16764395238029943)
,p_name=>'P4_LAST_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(194861611305454251)
,p_prompt=>unistr('\59D3')
,p_source=>'select last_name from tcw_user_names where user_name = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16764785924029945)
,p_name=>'P4_FIRST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(194861611305454251)
,p_prompt=>unistr('\540D')
,p_source=>'select first_name from tcw_user_names where user_name = :APP_USER'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16765242694029946)
,p_name=>'P4_SHOW_DOCUMENTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(194861611305454251)
,p_item_default=>'Y'
,p_prompt=>unistr('\30C9\30AD\30E5\30E1\30F3\30C8\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_DOCUMENTS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16765645813029947)
,p_name=>'P4_SHOW_SEMINARS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(194861611305454251)
,p_item_default=>'Y'
,p_prompt=>unistr('\30BB\30DF\30CA\30FC\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_SEMINARS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16766002665029947)
,p_name=>'P4_SEMINAR_CLONO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(194861611305454251)
,p_item_default=>'Y'
,p_prompt=>unistr('\8868\793A\9806\5E8F')
,p_source=>'tcw_util.get_preference(''SEMINAR_CLONO'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\6642\9593\9806')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\767B\9332\9806')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16766444111029947)
,p_name=>'P4_SHOW_FAQS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(194861611305454251)
,p_item_default=>'Y'
,p_prompt=>unistr('FAQ\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_FAQS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16766793467029948)
,p_name=>'P4_SHOW_FIELDALERTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(194861611305454251)
,p_item_default=>'Y'
,p_prompt=>unistr('Field Alert\306E\8868\793A')
,p_source=>'tcw_util.get_preference(''SHOW_FIELDALERTS'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CUSTOM'
,p_attribute_02=>'Y'
,p_attribute_03=>unistr('\3059\308B')
,p_attribute_04=>'N'
,p_attribute_05=>unistr('\3057\306A\3044')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16770825079029978)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30D7\30ED\30D5\30A1\30A4\30EB\306E\66F4\65B0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :APP_USER is not null then',
'  merge into tcw_user_names',
'  using',
'    (select :APP_USER as user_name,',
'     :P4_FIRST_NAME as first_name,',
'     :P4_LAST_NAME as last_name',
'    from dual) pref',
'  on (tcw_user_names.user_name = pref.user_name)',
'  when matched then',
'    update set first_name = pref.first_name,',
'               last_name  = pref.last_name',
'  when not matched then',
'    insert (user_name, first_name, last_name)',
'    values (pref.user_name, pref.first_name, pref.last_name);',
'  tcw_util.set_preference(''SHOW_DOCUMENTS'',:P4_SHOW_DOCUMENTS);',
'  tcw_util.set_preference(''SHOW_SEMINARS'',:P4_SHOW_SEMINARS);',
'  tcw_util.set_preference(''SHOW_FAQS'',:P4_SHOW_FAQS);',
'  tcw_util.set_preference(''SHOW_FIELDALERTS'',:P4_SHOW_FIELDALERTS);',
'  tcw_util.set_preference(''SEMINAR_CLONO'',:P4_SEMINAR_CLONO);',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16763615498029942)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16759246938029934)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(194859676082454232)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\66F4\65B0\901A\77E5\3092\8A2D\5B9A\3057\305F\6587\66F8 - \5BFE\8A71\30B0\30EA\30C3\30C9\30FB\30C7\30FC\30BF\306E\4FDD\5B58')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16762910096029941)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(194860603397454241)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\30D5\30A9\30ED\30FC\4E2D\306E\5229\7528\8005 - \5BFE\8A71\30B0\30EA\30C3\30C9\30FB\30C7\30FC\30BF\306E\4FDD\5B58')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\691C\7D22\7D50\679C')
,p_step_title=>unistr('\691C\7D22\7D50\679C')
,p_step_sub_title=>unistr('\691C\7D22\7D50\679C')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'p.tcw-Abstract {font-size:10px; font-color:glay;}',
'',
'div.tcw-confsquare {',
'  float:  left;',
'  width:  10px;',
'  height: 10px;',
'  margin: 2px;',
'  border: 1px solid rgba(0, 0, 0, .2);',
'}',
'',
'.orange {',
'    background: #ffa500;',
'}',
'',
'.blue {',
'    background: #0000ff;',
'}',
'',
'.green {',
'    background: #008000;',
'}',
'',
'.red {',
'    background: #ff0000',
'}',
'',
'.black {',
'    background: #000000',
'}'))
,p_step_template=>wwv_flow_api.id(16331580584626940)
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\76F4\63A5\30EA\30F3\30AF\304B\3089\691C\7D22\7D50\679C\3092\8868\793A\3059\308B\3002<br/>'),
'',
'<p>',
'  https://tcweb.jp.xxxxxx.com/TCWEB/search?q=%23CLOUD+FastConnect  ',
'</p>',
'',
unistr('\30BF\30B0\306B\306F\672C\6765''#''\3092\6307\5B9A\3059\308B\3068\3053\308D\3001#\305D\306E\307E\307E\3060\3068\30DA\30FC\30B8\5185\306E\30A2\30F3\30AB\30FC\3068\8A8D\8B58\3055\308C\3066\3057\307E\3046\306E\3067\3001%23\306B\7F6E\304D\63DB\3048\3066\6307\5B9A\3059\308B\3002')))
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'2018/10/30 - ynakakos',
unistr('Consulting Only\306E\8CC7\6599\304C\307F\3093\306A\306B\30EA\30B9\30C8\3055\308C\3066\3044\305F\306E\3067\3001\30EA\30B9\30C8\3055\308C\306A\3044\3088\3046\691C\7D22\6761\4EF6\3092\8FFD\52A0\3057\305F\3002')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181213120206'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16281137401220648)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(254530006753825756)
,p_name=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0')
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select hashtag,',
'       count(*) as count,',
'       ''P5_KEYWORD'' as item_name',
'from tcw_hashtags',
'where hashtag like ''%'' || :P5_HASHTAG || ''%''',
'group by hashtag',
'order by 1 asc'))
,p_display_when_condition=>'select c001 from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'');'
,p_display_condition_type=>'NOT_EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7918501260641376)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7882012396024066)
,p_query_column_id=>1
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>1
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7882143084024067)
,p_query_column_id=>2
,p_column_alias=>'COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7882242090024068)
,p_query_column_id=>3
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(254532546095825781)
,p_name=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0')
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with hashtags_v as (',
'  select c001 as hashtag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), owners_v as (',
'  select c001 as owner',
'  from apex_collections',
'  where collection_name = ''SEARCH_OWNERS''',
')',
'select ''P5_KEYWORD'' as item_name,',
'  hashtag,',
'  count(*) as count',
'from tcw_hashtags s',
'where hashtag not in (select hashtag from hashtags_v)',
'and s.link_num in',
'(select l.link_num from tcw_documents l',
'where l.opl_code > 0 and l.in_consulting <= nvl(:IN_CONSULTING, 0)',
'and',
'(',
'  (',
'    case when :AI_CONTAINS is not null then',
'      (',
'      select x.link_num from tcw_doc_data x where contains(x.link_object,:AI_CONTAINS) > 0',
'         and x.link_num = l.link_num',
'      union ',
'      select x.link_num from tcw_documents x where contains(x.obj_name,:AI_CONTAINS) > 0',
'         and x.link_num = l.link_num',
'      union ',
'      select x.link_num from tcw_documents x where contains(x.abstract,:AI_CONTAINS) > 0',
'         and x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and ',
'  (',
'    case when (select count(*) from hashtags_v) > 0 then',
'      (',
'      select x.link_num from tcw_hashtags x',
'       where x.hashtag in (select hashtag from hashtags_v)',
'         and x.link_num = l.link_num',
'      group by x.link_num having count(*) >= (select count(*) from hashtags_v)',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (',
'    case when (select count(*) from owners_v) > 0 then',
'      (',
'      select x.link_num from tcw_documents x',
'       where x.opl_code < 6 and x.upd_username in (select owner from owners_v)',
'         and x.link_num = l.link_num',
'      union',
'      select x.link_num from tcw_documents x join tcw_doc_acls a on x.link_num = a.link_num ',
'       where x.opl_code < 6 and a.user_name in (select owner from owners_v)',
'         and x.link_num = l.link_num',
'      union',
'      select x.link_num from tcw_documents x',
'      where x.upd_username in (select owner from owners_v where owner = :APP_USER)',
'        and x.link_num = l.link_num',
'      union',
'      select x.link_num from tcw_documents x join tcw_doc_acls a on x.link_num = a.link_num ',
'      where a.user_name in (select owner from owners_v where owner = :APP_USER)',
'        and x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num     ',
'    end',
'  ) = l.link_num',
')',
')',
'group by hashtag order by 3 desc'))
,p_display_when_condition=>'select c001 from apex_collections where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'');'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(7918501260641376)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7882253279024069)
,p_query_column_id=>1
,p_column_alias=>'ITEM_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Item Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7882380946024070)
,p_query_column_id=>2
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>2
,p_column_heading=>'Hashtag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7882475856024071)
,p_query_column_id=>3
,p_column_alias=>'COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Count'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(254532743948825783)
,p_plug_name=>'Reset'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16347736066626954)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select c001 from apex_collections where collection_name in (''SEARCH_WORDS'', ''SEARCH_HASHTAGS'', ''SEARCH_OWNERS'');'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(317977768435228390)
,p_name=>'Searched Words'
,p_template=>wwv_flow_api.id(16347736066626954)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 from apex_collections ',
'where collection_name = ''SEARCH_WORDS'' group by c001 order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16779559460037753)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\691C\7D22\5358\8A9E')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P5_KEYWORD":"#C001#"}, showWait:true });''/>#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(317977899883228391)
,p_name=>'Searched Hashtags'
,p_template=>wwv_flow_api.id(16347464281626954)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 from apex_collections ',
'where collection_name = ''SEARCH_HASHTAGS''',
'order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16780277876037755)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P5_KEYWORD":"&#x23;#C001#"}, showWait:true });''/>&#x23;#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(317977968224228392)
,p_name=>'Searched Owners'
,p_template=>wwv_flow_api.id(16347464281626954)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 from apex_collections ',
'where collection_name = ''SEARCH_OWNERS'' order by c001'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16781028172037757)
,p_query_column_id=>1
,p_column_alias=>'C001'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\6240\6709\8005')
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<i class="fa fa-times-circle" onclick=''apex.submit({ request:"REMOVE", set:{"P5_KEYWORD":"@#C001#"}, showWait:true });''/>@#C001#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(352765875428447998)
,p_plug_name=>'Search Result'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with hashtags_v as (',
'  select c001 as hashtag',
'  from apex_collections',
'  where collection_name = ''SEARCH_HASHTAGS''',
'), owners_v as (',
'  select c001 as owner',
'  from apex_collections',
'  where collection_name = ''SEARCH_OWNERS''',
')',
'select case',
'  when l.upd_username = :APP_USER or l.link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER) then',
'       ''<a href="'' || ',
'       apex_page.get_url(p_page => 2, p_clear_cache => 2, p_items => ''P2_LINK_NUM'', p_values => l.link_num)',
'       || ''"><span class="t-Icon fa&#x20;fa-pencil"></a>''',
'       else ''''',
'  end rowop,',
'  l.link_num as link_num,',
'  case',
'    when l.opl_code = 1 then',
unistr('    \3000\3000''<div class="tcw-confsquare orange" title="\516C\958B\8CC7\6599"/>'''),
unistr('  \3000\3000\3000\3000when l.opl_code = 2 then'),
unistr('    \3000\3000''<div class="tcw-confsquare blue"   title="Oracle Confidential"/>'''),
'    when l.opl_code = 3 then',
'     ''<div class="tcw-confsquare green"  title="Internal Use Only"/>''',
'    when l.opl_code = 4 then',
'     ''<div class="tcw-confsquare red"    title="Strictly Confidential"/>''',
'    when l.opl_code = 5 then',
'     ''<div class="tcw-confsquare black"  title="Consulting Only"/>''',
unistr('   \3000when l.opl_code = 6 then'),
'     ''<div class="tcw-confsquare black"  title="Private"/>''',
unistr('   \3000else to_char(l.opl_code)'),
'  end opl_code,',
'  case',
'  when d.link_object is not null then',
'    ''<a href="'' || ''f?p='' || :APP_ID || '':DOWNLOAD:'' || :APP_SESSION || ''::NO::DOWNLOAD_LINK_NUM:'' || l.link_num || ''" title="'' || d.file_name || ''">'' || l.obj_name || ''</a><p class="tcw-Abstract">''||htf.escape_sc(substr(l.abstract,1,80))||''...</p>''',
'  when l.link_url is not null then',
'    ''<a href="'' || l.link_url || ''" title="'' || l.link_url || ''">'' || l.obj_name || ''</a><p class="tcw-Abstract">''||htf.escape_sc(substr(l.abstract,1,80))||''...</p>''',
'  else l.obj_name',
'  end title,',
'  case',
'  when u.last_name is null then',
'    ''<a href="'' || apex_page.get_url(p_page => 5, p_request => 5, p_items => ''P0_KEYWORD'', p_values=> tcw_util.get_name_part(l.upd_username,''@'')) ||''">''|| tcw_util.get_name_part(l.upd_username) ||''</a>''',
'  else',
'    ''<a href="'' || apex_page.get_url(p_page => 5, p_request => 5, p_items => ''P0_KEYWORD'', p_values=> tcw_util.get_name_part(l.upd_username,''@'')) ||''">''|| u.last_name || '' '' || u.first_name||''</a>''',
'  end owner,',
'  l.upd_date updated,      ',
'  t.content_type_alias type,',
'  k.link_names related_url',
'from tcw_documents l left outer join ',
'  (tcw_doc_data d left outer join tcw_content_types t',
'       on d.content_type = t.content_type)',
'       on l.link_num = d.link_num',
'    left outer join tcw_user_names u on l.upd_username = u.user_name',
'    left outer join tcw_doc_links_v k on l.link_num = k.link_num',
'where l.opl_code > 0 and l.in_consulting <= nvl(:IN_CONSULTING, 0)',
'and',
'(',
'  (',
'    case when (select count(*) from apex_collections ',
'             where collection_name in (''SEARCH_WORDS'',''SEARCH_HASHTAGS'',''SEARCH_OWNERS'')) = 0 then',
'      (',
'      select x.link_num from tcw_documents x',
'      where  x.opl_code < 6 and x.upd_date > add_months(sysdate,-1) and x.announce_flag = 1',
'        and  x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (',
'    case when :AI_CONTAINS is not null then',
'      (',
'      select x.link_num from tcw_doc_data x where contains(x.link_object,:AI_CONTAINS) > 0',
'         and x.link_num = l.link_num',
'      union ',
'      select x.link_num from tcw_documents x where contains(x.obj_name,:AI_CONTAINS) > 0',
'         and x.link_num = l.link_num',
'      union ',
'      select x.link_num from tcw_documents x where contains(x.abstract,:AI_CONTAINS) > 0',
'         and x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and ',
'  (',
'    case when (select count(*) from hashtags_v) > 0 then',
'      (',
'      select x.link_num from tcw_hashtags x',
'       where x.hashtag in (select hashtag from hashtags_v)',
'         and x.link_num = l.link_num',
'      group by x.link_num having count(*) >= (select count(*) from hashtags_v)',
'      )',
'    else',
'      l.link_num',
'    end',
'  ) = l.link_num',
'  and',
'  (',
'    case when (select count(*) from owners_v) > 0 then',
'      (',
'      select x.link_num from tcw_documents x',
'       where x.opl_code < 6 and x.upd_username in (select owner from owners_v)',
'         and x.link_num = l.link_num',
'      union',
'      select x.link_num from tcw_documents x join tcw_doc_acls a on x.link_num = a.link_num ',
'       where x.opl_code < 6 and a.user_name in (select owner from owners_v)',
'         and x.link_num = l.link_num',
'      union',
'      select x.link_num from tcw_documents x',
'      where x.upd_username in (select owner from owners_v where owner = :APP_USER)',
'        and x.link_num = l.link_num',
'      union',
'      select x.link_num from tcw_documents x join tcw_doc_acls a on x.link_num = a.link_num ',
'      where a.user_name in (select owner from owners_v where owner = :APP_USER)',
'        and x.link_num = l.link_num',
'      )',
'    else',
'      l.link_num     ',
'    end',
'  ) = l.link_num',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(356198617003673084)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:XLS'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>342551469278080141
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16784113532037769)
,p_db_column_name=>'ROWOP'
,p_display_order=>10
,p_column_identifier=>'M'
,p_column_label=>'-'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7882804578024074)
,p_db_column_name=>'OPL_CODE'
,p_display_order=>20
,p_column_identifier=>'R'
,p_column_label=>'P'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16784502050037770)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Detail'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16782129353037766)
,p_db_column_name=>'TITLE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_allow_sorting=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16782530599037767)
,p_db_column_name=>'OWNER'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Owner'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16782936221037768)
,p_db_column_name=>'UPDATED'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY/MM/DD HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16783264810037768)
,p_db_column_name=>'TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Type'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16783658407037768)
,p_db_column_name=>'RELATED_URL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Links'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(356240577479854149)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'31377'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>25
,p_report_columns=>'ROWOP:OPL_CODE:TITLE:OWNER:UPDATED:LINK_NUM:TYPE:RELATED_URL:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16778898160037750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(254532743948825783)
,p_button_name=>'B_INIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\691C\7D22\6761\4EF6\306E\30EA\30BB\30C3\30C8')
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7881358436024060)
,p_name=>'P5_CONTAINS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16281137401220648)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7882622166024072)
,p_name=>'P5_HASHTAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(254530006753825756)
,p_prompt=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16777732931037743)
,p_name=>'P5_KEYWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16281137401220648)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Keyword'
,p_placeholder=>unistr('\5358\8A9E #\30CF\30C3\30B7\30E5\30BF\30B0 @\6240\6709\8005')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>80
,p_display_when=>'REMOVE'
,p_display_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_field_template=>wwv_flow_api.id(16420505646627025)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16787097144037801)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\521D\671F\5316')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  apex_collection.create_or_truncate_collection(',
'    p_collection_name => ''SEARCH_WORDS'');',
'  apex_collection.create_or_truncate_collection(',
'    p_collection_name => ''SEARCH_HASHTAGS'');',
'  apex_collection.create_or_truncate_collection(',
'    p_collection_name => ''SEARCH_OWNERS'');',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16778898160037750)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16786311998037799)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\524A\9664')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_words      APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_hashtags   APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_owners     APEX_APPLICATION_GLOBAL.VC_ARR2;',
'begin',
'  tcw_util.extract_search_items (',
'      p_string => :P5_KEYWORD,',
'      p_item_words    => l_words,',
'      p_item_hashtags => l_hashtags,',
'      p_item_owners   => l_owners);',
'  for i in 1..l_words.count loop',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_WORDS'',',
'                                   p_attr_number => 1,',
'                                   p_attr_value => l_words(i));',
'  end loop;',
'  for i in 1..l_hashtags.count loop',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_HASHTAGS'',',
'                                   p_attr_number => 1,',
'                                   p_attr_value => l_hashtags(i));',
'  end loop;',
'  for i in 1..l_owners.count loop',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_OWNERS'',',
'                                   p_attr_number => 1,',
'                                   p_attr_value => l_owners(i));',
'  end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16786663217037800)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\691C\7D22\6761\4EF6\8FFD\52A0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_words      APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_hashtags   APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_owners     APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_querytime  timestamp with local time zone := systimestamp;',
'  i integer := 0;',
'  j integer := 0;',
'begin',
'  tcw_util.extract_search_items (',
'      p_string => :P5_KEYWORD,',
'      p_item_words    => l_words,',
'      p_item_hashtags => l_hashtags,',
'      p_item_owners   => l_owners);',
'  if l_words.count > 0 then',
'    for i in 1..l_words.count',
'    loop',
'      j := j + 1;',
'      tcw_util.log_query_history(l_words(i), :APP_USER, l_querytime, ''K'', j);',
'    end loop;',
'    apex_collection.add_members(p_collection_name => ''SEARCH_WORDS'', ',
'                                p_c001 => l_words);',
'  end if;',
'  if l_hashtags.count > 0 then',
'    for i in 1..l_hashtags.count',
'    loop',
'      j := j + 1;',
'      tcw_util.log_query_history(l_hashtags(i), :APP_USER, l_querytime, ''H'', j);',
'    end loop;',
'    apex_collection.add_members(p_collection_name => ''SEARCH_HASHTAGS'',',
'                                p_c001 => l_hashtags);',
'  end if;',
'  if l_owners.count > 0 then',
'    for i in 1..l_owners.count',
'    loop',
'      j := j + 1;',
'      tcw_util.log_query_history(l_owners(i), :APP_USER, l_querytime, ''P'', j);',
'    end loop;',
'    apex_collection.add_members(p_collection_name => ''SEARCH_OWNERS'',',
'                                p_c001 => l_owners);',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16787489766037802)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Conditions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  apex_collection.create_or_truncate_collection(',
'    p_collection_name => ''SEARCH_WORDS'');',
'  apex_collection.create_or_truncate_collection(',
'    p_collection_name => ''SEARCH_HASHTAGS'');',
'  apex_collection.create_or_truncate_collection(',
'    p_collection_name => ''SEARCH_OWNERS'');',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'B_INIT MYDOC'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16785931009037798)
,p_process_sequence=>20
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\76F4\63A5\691C\7D22')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_words      APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_hashtags   APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_owners     APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  l_querytime  timestamp with local time zone := systimestamp;',
'  i integer := 0;',
'  j integer := 0;',
'begin',
'  :P0_KEYWORD := utl_url.unescape(url => :P0_KEYWORD, url_charset => ''UTF-8'');',
'  tcw_util.extract_search_items (',
'      p_string => :P0_KEYWORD,',
'      p_item_words    => l_words,',
'      p_item_hashtags => l_hashtags,',
'      p_item_owners   => l_owners,',
'      p_hashtag => ''#''); -- %23',
'  if l_words.count > 0 then',
'    for i in 1..l_words.count',
'    loop',
'      j := j + 1;',
'      tcw_util.log_query_history(l_words(i), :APP_USER, l_querytime, ''K'', j);',
'    end loop;',
'    apex_collection.add_members(p_collection_name => ''SEARCH_WORDS'', ',
'                                p_c001 => l_words);',
'  end if;',
'  if l_hashtags.count > 0 then',
'    for i in 1..l_hashtags.count',
'    loop',
'      j := j + 1;',
'      tcw_util.log_query_history(l_hashtags(i), :APP_USER, l_querytime, ''H'', j);',
'    end loop;',
'    apex_collection.add_members(p_collection_name => ''SEARCH_HASHTAGS'',',
'                                p_c001 => l_hashtags);',
'  end if;',
'  if l_owners.count > 0 then',
'    for i in 1..l_owners.count',
'    loop',
'      j := j + 1;',
'      tcw_util.log_query_history(l_owners(i), :APP_USER, l_querytime, ''P'', j);',
'    end loop;',
'    apex_collection.add_members(p_collection_name => ''SEARCH_OWNERS'',',
'                                p_c001 => l_owners);',
'  end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'5'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
end;
/
begin
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16787877943037802)
,p_process_sequence=>30
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'My Documents'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  apex_collection.add_member(''SEARCH_OWNERS'', tcw_util.get_name_part(:APP_USER));',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MYDOC'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7881470329024061)
,p_process_sequence=>40
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Oracle Text\691C\7D22\6761\4EF6')
,p_process_sql_clob=>':AI_CONTAINS := tcw_util.get_contains;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D5\30A1\30A4\30EB\306E\30A2\30C3\30D7\30ED\30FC\30C9')
,p_step_title=>unistr('\30D5\30A1\30A4\30EB\306E\30A2\30C3\30D7\30ED\30FC\30C9')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Form on LINK_DATA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206160806'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(196606446905819338)
,p_plug_name=>'Form on TCW_DOC_DATA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16792789926043114)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(196606446905819338)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P6_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16793179249043114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(196606446905819338)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16793629017043115)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(196606446905819338)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P6_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16794017413043116)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(196606446905819338)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16798060315043143)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16794377693043116)
,p_name=>'P6_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(196606446905819338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link Num'
,p_source=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16794776360043120)
,p_name=>'P6_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(196606446905819338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>250
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16795225316043121)
,p_name=>'P6_CONTENT_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(196606446905819338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Content Type'
,p_source=>'CONTENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16795563920043122)
,p_name=>'P6_LINK_OBJECT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(196606446905819338)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link Object'
,p_source=>'LINK_OBJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'CONTENT_TYPE'
,p_attribute_03=>'FILE_NAME'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16795998368043138)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TCW_DOC_DATA'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P6_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16796359287043140)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function get_pk return varchar2',
'    is',
'    begin',
'        null',
'    end; ',
'begin',
'    :P6_LINK_NUM := get_pk;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16793629017043115)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16796802306043140)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOC_DATA'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P6_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16797191870043140)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16794017413043116)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16797635575043140)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P2_LINK_NUM is null then',
'        select "#OWNER#"."TCW_DOCUMENTS_SEQ".nextval',
'          into :P2_LINK_NUM',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D5\30A1\30A4\30EB\540D\306E\4FEE\6B63')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A1\30A4\30EB\540D\306E\4FEE\6B63')
,p_step_sub_title=>unistr('\30D5\30A1\30A4\30EB\540D\306E\4FEE\6B63')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206161018'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(199406108512233965)
,p_plug_name=>'Form for maintain file_name'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(199406678217233974)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16803205197048284)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(199406678217233974)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16803621015048285)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(199406678217233974)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P7_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16801701612048279)
,p_name=>'P7_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(199406108512233965)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link Num'
,p_source=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16802085894048282)
,p_name=>'P7_FILE_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(199406108512233965)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>250
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16802528478048283)
,p_name=>'P7_CONTENT_TYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(199406108512233965)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30B3\30F3\30C6\30F3\30C8\30BF\30A4\30D7')
,p_source=>'CONTENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16805552706048304)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16803205197048284)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16806137806048306)
,p_event_id=>wwv_flow_api.id(16805552706048304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16804019962048300)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TCW_DOC_DATA'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P7_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16804409791048301)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOC_DATA'
,p_attribute_02=>'TCW_DOC_DATA'
,p_attribute_03=>'P7_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16804810458048302)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16805190873048303)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\8CC7\6599\524A\9664\306E\901A\77E5')
,p_step_title=>unistr('\8CC7\6599\524A\9664\306E\901A\77E5')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>unistr('\8CC7\6599\524A\9664\306E\901A\77E5')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(16341338282626946)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129150124'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(149726482530520032)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154826988090110674)
,p_plug_name=>'Announce'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('htp.p(''DOC#'' || :P8_LINK_NUM || ''\304C\524A\9664\3055\308C\307E\3057\305F\3002'');'),
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16809760379068506)
,p_name=>'P8_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(154826988090110674)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\53D7\4ED8')
,p_alias=>'DOWNLOAD'
,p_step_title=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\53D7\4ED8')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\53D7\4ED8')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'2018/10/30 - ynakakos',
unistr('\691C\7D22\6761\4EF6\5909\66F4\306E\3064\3044\3067\306B\3001Consulting Only (opl_code = 5)\306E\8CC7\6599\306F\3001\30B3\30F3\30B5\30EB\30BF\30F3\30C8\4EE5\5916\304C\30C0\30A6\30F3\30ED\30FC\30C9\3067\304D\306A\3044\3088\3046\306B\3059\308B\30ED\30B8\30C3\30AF\3092\8FFD\52A0\3057\305F\3002\305F\3060\3057\3001\73FE\5728\306F\30B3\30E1\30F3\30C8\30A2\30A6\30C8\3057\3066\7121\52B9\306B\3057\3066\3044\308B\3002')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206150710'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(203792734111806339)
,p_plug_name=>'Item Holder'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16812602205076773)
,p_name=>'DOWNLOAD_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(203792734111806339)
,p_prompt=>'Link Num'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16813040859076818)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirect'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_opl_code tcw_documents.opl_code%type;',
'  l_u_email  tcw_documents.reg_username%type;',
'begin',
'  -- if opl_code is strictly confidential (4), restrict user who can download the doc.',
'  begin',
'    select opl_code, reg_username into l_opl_code, l_u_email',
'    from tcw_documents where link_num = :DOWNLOAD_LINK_NUM;',
'    if (l_opl_code = 4 and l_u_email <> :APP_USER) then',
'      apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''10''));',
'--  else if (l_opl_code = 5 and nvl(:IN_CONSULTING, 0) <> 1) then',
'--    apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''10''));    ',
'    end if;',
'  exception',
'    when no_data_found then',
'      null; -- no restriction needed.',
'  end;',
'  -- log the request and redirect to actual download page if user is valid.',
'  tcw_util.log_download_history(:DOWNLOAD_LINK_NUM, :APP_USER, systimestamp);',
'  apex_util.redirect_url(',
'   p_url => apex_util.get_blob_file_src(''P6_LINK_OBJECT'', :DOWNLOAD_LINK_NUM)',
'  );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6A29\9650\30A8\30E9\30FC')
,p_step_title=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6A29\9650\30A8\30E9\30FC')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\6A29\9650\30A8\30E9\30FC')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129150457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212899451172316659)
,p_plug_name=>'Error'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\6A29\9650\304C\306A\3044\306E\3067\30C0\30A6\30F3\30ED\30FC\30C9\3067\304D\307E\305B\3093\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\8CC7\6599\7DE8\96C6\6A29\9650\306E\66F4\65B0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8CC7\6599\7DE8\96C6\6A29\9650\306E\66F4\65B0')
,p_step_sub_title=>unistr('\8CC7\6599\7DE8\96C6\6A29\9650\306E\66F4\65B0')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'800'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129150717'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212301770980051672)
,p_plug_name=>unistr('\8AAC\660E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\6587\66F8\306E\7DE8\96C6\6A29\9650\3092\4ED6\306E\30E6\30FC\30B6\30FC\306B\5272\308A\5F53\3066\307E\3059\3002\3053\306E\5272\5F53\4F5C\696D\306F\8A72\5F53\6587\66F8\306E\6700\7D42\306E\66F4\65B0\8005\306E\307F\304C\5B9F\65BD\3067\304D\308B\3088\3046\3001\5236\9650\3055\308C\3066\3044\307E\3059\3002\5225\306E\30E6\30FC\30B6\30FC\306B\3088\308B\6587\66F8\306E\66F4\65B0\304C\3042\308B\3068\6700\7D42\66F4\65B0\8005(=\6240\6709\8005)\304C\5909\308F\308B\305F\3081\3001\73FE\6642\70B9\306E\6240\6709\8005\306F\7DE8\96C6\6A29\9650\3092\5931\3044\3001\7DE8\96C6\6A29\9650\306F\5B8C\5168\306B\79FB\884C\3057\307E\3059\3002\7D99\7D9A\3057\3066\7DE8\96C6\6A29\9650\3092\4FDD\6301\3057\305F\3044\5834\5408\306F\3001\81EA\5206\81EA\8EAB\3092\3042\3089\304B\3058\3081\8FFD\52A0\3057\3066\304A\304D\307E\3059\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212869149254823312)
,p_plug_name=>'Update Document ACLs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LINK_NUM,',
'       USER_NAME,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       LAST_UPDATED_BY,',
'       LAST_UPDATE_DATE',
'  from TCW_DOC_ACLS',
'where link_num = :P13_LINK_NUM'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P13_LINK_NUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212870180509823342)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212870714167823348)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212871316627823363)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212871920386823369)
,p_name=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINK_NUM'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ID#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P13_LINK_NUM'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212872487278823373)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
,p_is_required=>true
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212873073582823374)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212873741470823376)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Creation Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212874353473823377)
,p_name=>'LAST_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>80
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(212874939515823377)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'TIMESTAMP_TZ'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Update Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(212869646391823321)
,p_internal_uid=>199222498666230378
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(212869969922823329)
,p_interactive_grid_id=>wwv_flow_api.id(212869646391823321)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(212870064100823331)
,p_report_id=>wwv_flow_api.id(212869969922823329)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212871079613823355)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(212870714167823348)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212871696498823364)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(212871316627823363)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212872280726823372)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(212871920386823369)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212872934988823374)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(212872487278823373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212873536817823375)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(212873073582823374)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212874112808823376)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(212873741470823376)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212874688274823377)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(212874353473823377)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(212875301335823378)
,p_view_id=>wwv_flow_api.id(212870064100823331)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(212874939515823377)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16820166382103809)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(212869149254823312)
,p_button_name=>'B_CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\9589\3058\308B')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16820554514103811)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(212869149254823312)
,p_button_name=>'B_ADDME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\79C1\3092\8FFD\52A0')
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select 1 from tcw_doc_acls where link_num = :P13_LINK_NUM and user_name = :APP_USER'
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16820975619103812)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(212869149254823312)
,p_button_name=>'B_DELME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\79C1\3092\524A\9664')
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select 1 from tcw_doc_acls where link_num = :P13_LINK_NUM and user_name = :APP_USER'
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16821441522103813)
,p_name=>'P13_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(212869149254823312)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16822206776103819)
,p_name=>unistr('\8FFD\52A0')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16820554514103811)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16822741780103822)
,p_event_id=>wwv_flow_api.id(16822206776103819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l number;',
'begin',
'  select count(*) into l from tcw_doc_acls where link_num = :P13_LINK_NUM and user_name = :APP_USER;',
'  if l = 0 then',
'    insert into tcw_doc_acls(link_num, user_name) values(:P13_LINK_NUM, :APP_USER);',
'  end if;',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16823185304103824)
,p_event_id=>wwv_flow_api.id(16822206776103819)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(212869149254823312)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16823566781103825)
,p_name=>unistr('\524A\9664')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16820975619103812)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16824056381103826)
,p_event_id=>wwv_flow_api.id(16823566781103825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from tcw_doc_acls where link_num = :P13_LINK_NUM and user_name = :APP_USER;'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16824584034103826)
,p_event_id=>wwv_flow_api.id(16823566781103825)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(212869149254823312)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16825041166103827)
,p_name=>'Close'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16820166382103809)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16825500388103828)
,p_event_id=>wwv_flow_api.id(16825041166103827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16821811565103816)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(212869149254823312)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\79C1\306E\4FEE\6B63\4F9D\983C')
,p_step_title=>unistr('\79C1\306E\4FEE\6B63\4F9D\983C')
,p_step_sub_title=>unistr('\79C1\306E\4FEE\6B63\4F9D\983C')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206142315'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(211839818041725972)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212532052278893076)
,p_plug_name=>'My Remarks'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.link_num, l.obj_name, r.remark_text, r.is_closed, r.date_closed, r.last_update_date from tcw_documents l join tcw_doc_remarks r on l.link_num = r.link_num ',
'where l.link_num in (select link_num from tcw_doc_acls where user_name = :APP_USER)',
'   or upd_username = :APP_USER',
'order by l.link_num, r.date_of_remark'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(212532138264893076)
,p_name=>'My Remarks'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>198884990539300133
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16830390845111945)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16830749707111945)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('\6587\66F8\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16828794363111941)
,p_db_column_name=>'REMARK_TEXT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>unistr('\4F9D\983C\5185\5BB9')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16829234569111943)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>unistr('\6700\7D42\66F4\65B0')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16829571893111943)
,p_db_column_name=>'IS_CLOSED'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>unistr('\5BFE\5FDC\6E08\307F')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16829991111111944)
,p_db_column_name=>'DATE_CLOSED'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>unistr('\5BFE\5FDC\65E5')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(212540200538893699)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'31840'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_NAME:REMARK_TEXT:IS_CLOSED:DATE_CLOSED:LAST_UPDATE_DATE:'
,p_sort_column_1=>'LAST_UPDATE_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_step_title=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_step_sub_title=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206143727'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191806471011899060)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(221716445915987003)
,p_plug_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select h.link_num, h.username, h.date_download, d.obj_name, ',
'  case',
'  when h.last_updated_by is null then d.upd_username',
'  else h.last_updated_by',
'  end last_updated_by',
'from tcw_documents d join tcw_download_history h on d.link_num = h.link_num',
'                ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(221716500974987003)
,p_name=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\5C65\6B74')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>208069353249394060
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16834845851119285)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_LINK_NUM:#LINK_NUM#'
,p_column_linktext=>'#LINK_NUM#'
,p_allow_highlighting=>'N'
,p_allow_computations=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16834434255119284)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>11
,p_column_identifier=>'D'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16835179260119286)
,p_db_column_name=>'USERNAME'
,p_display_order=>31
,p_column_identifier=>'B'
,p_column_label=>unistr('\53C2\7167\8005')
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="https://people.oracle.com/@#USERNAME#" target="_blank">#USERNAME#</a>',
''))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16835985215119288)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>41
,p_column_identifier=>'F'
,p_column_label=>unistr('\6700\7D42\66F4\65B0\8005')
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="https://people.oracle.com/@#LAST_UPDATED_BY#" target="_blank">#LAST_UPDATED_BY#</a>',
''))
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16835558036119287)
,p_db_column_name=>'DATE_DOWNLOAD'
,p_display_order=>51
,p_column_identifier=>'C'
,p_column_label=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9\65E5')
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(221721685310997266)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'31892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_NAME:USERNAME:LAST_UPDATED_BY:DATE_DOWNLOAD:'
,p_sort_column_1=>'DATE_DOWNLOAD'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\4FEE\6B63\4F9D\983C\306E\767B\9332\7DE8\96C6')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4FEE\6B63\4F9D\983C\306E\767B\9332\7DE8\96C6')
,p_allow_duplicate_submissions=>'N'
,p_step_sub_title=>unistr('\4FEE\6B63\4F9D\983C\306E\767B\9332\7DE8\96C6')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'800'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206165036'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212522127766537898)
,p_plug_name=>'Form on TCW_DOC_REMARKS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212522835252537900)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16841747251151292)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(212522835252537900)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\30AD\30E3\30F3\30BB\30EB')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16842103166151294)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(212522835252537900)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_TCW_REMARK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16842449858151295)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(212522835252537900)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P18_TCW_REMARK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16842882288151295)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(212522835252537900)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4F5C\6210')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P18_TCW_REMARK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16839009792151285)
,p_name=>'P18_TCW_REMARK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(212522127766537898)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tcw Remark Id'
,p_source=>'TCW_REMARK_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16839421508151289)
,p_name=>'P18_LINK_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(212522127766537898)
,p_use_cache_before_default=>'NO'
,p_source=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16839794809151290)
,p_name=>'P18_REMARK_TEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(212522127766537898)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\4FEE\6B63\5185\5BB9')
,p_source=>'REMARK_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16840188743151290)
,p_name=>'P18_AUTHOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(212522127766537898)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\66F4\65B0\8005')
,p_source=>'AUTHOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>80
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16840635937151291)
,p_name=>'P18_IS_CLOSED'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(212522127766537898)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\5BFE\5FDC\6E08\307F')
,p_source=>'IS_CLOSED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16840978195151291)
,p_name=>'P18_DATE_OF_REMARK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(212522127766537898)
,p_use_cache_before_default=>'NO'
,p_source=>'DATE_OF_REMARK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16843391344151317)
,p_validation_name=>'P18_DATE_OF_REMARK must be timestamp'
,p_validation_sequence=>50
,p_validation=>'P18_DATE_OF_REMARK'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(16840978195151291)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16845339529151320)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16841747251151292)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16845800963151322)
,p_event_id=>wwv_flow_api.id(16845339529151320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16843704937151317)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TCW_DOC_REMARKS'
,p_attribute_02=>'TCW_DOC_REMARKS'
,p_attribute_03=>'P18_TCW_REMARK_ID'
,p_attribute_04=>'TCW_REMARK_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16844064820151318)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOC_REMARKS'
,p_attribute_02=>'TCW_DOC_REMARKS'
,p_attribute_03=>'P18_TCW_REMARK_ID'
,p_attribute_04=>'TCW_REMARK_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16844515737151319)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16842103166151294)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16844936389151319)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_step_title=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_step_sub_title=>unistr('\691C\7D22\30EF\30FC\30C9\5C65\6B74')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129151629'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191822759042938745)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(222210185582962994)
,p_plug_name=>unistr('\691C\7D22\5358\8A9E\5C65\6B74')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from tcw_query_history'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(222210308101962994)
,p_name=>unistr('\691C\7D22\5358\8A9E\5C65\6B74')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>208563160376370051
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16850618348158966)
,p_db_column_name=>'QUERY_TERM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Query Term'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16850963567158966)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16851354489158967)
,p_db_column_name=>'DATE_QUERY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Date Query'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16851818158158969)
,p_db_column_name=>'QUERY_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Query Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16852177677158970)
,p_db_column_name=>'TERM_POSITION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Term Position'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(222212621880963539)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'32054'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'QUERY_TERM:USERNAME:DATE_QUERY:TERM_POSITION:QUERY_TYPE:'
,p_sort_column_1=>'DATE_QUERY'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'TERM_POSITION'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\6240\6709\8005\306B\3088\308B\691C\7D22')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6240\6709\8005\306B\3088\308B\691C\7D22')
,p_step_sub_title=>unistr('\6240\6709\8005\306B\3088\308B\691C\7D22')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(16339812025626945)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206151507'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(275473089192292489)
,p_plug_name=>'Owner Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\6700\7D42\66F4\65B0\8005\3067\3042\308B\304B\3001\307E\305F\306F\3001\7DE8\96C6\6A29\9650\3092\6301\3063\3066\3044\308B\6587\66F8\3092\4E00\89A7\3057\307E\3059\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16855553583168792)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(275473089192292489)
,p_button_name=>'B_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\691C\7D22')
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16856904006168796)
,p_branch_name=>'Go To Search Result'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16855975747168793)
,p_name=>'P20_OWNER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(275473089192292489)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\6587\66F8\306E\6240\6709\8005')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'       when u.last_name is null then',
'          l.upd_username',
'       else',
'          u.last_name || '' '' || u.first_name || '','' || l.upd_username',
'       end d,',
'       l.upd_username r',
'from tcw_documents l left outer join tcw_user_names u on l.upd_username = u.user_name',
'where l.opl_code > 0 group by u.first_name, u.last_name, l.upd_username',
'union',
'select case',
'       when u.last_name is null then',
'          u.user_name',
'       else',
'          u.last_name || '' '' || u.first_name || '','' || u.user_name',
'       end d,',
'       u.user_name r',
'from tcw_user_names u join tcw_doc_acls a on u.user_name = a.user_name ',
'order by r'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16420864408627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16856351266168795)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Owner'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  apex_collection.add_member(''SEARCH_OWNERS'', tcw_util.get_name_part(:P20_OWNER));',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\5916\90E8\30B5\30A4\30C8\3078\306E\30EA\30C0\30A4\30EC\30AF\30C8')
,p_step_title=>unistr('\5916\90E8\30B5\30A4\30C8\3078\306E\30EA\30C0\30A4\30EC\30AF\30C8')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>unistr('\5916\90E8\30B5\30A4\30C8\3078\306E\30EA\30C0\30A4\30EC\30AF\30C8')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_deep_linking=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206151709'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263295035676924046)
,p_plug_name=>'Item Holder'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16858984372172832)
,p_name=>'21_REDIRECT_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(263295035676924046)
,p_prompt=>'Link Num'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16859360134172833)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Redirect'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_link_url  tcw_documents.link_url%type;',
'begin',
'  begin',
'    select link_url into l_link_url from tcw_documents',
'    where link_num = :REDIRECT_LINK_NUM;',
'  exception',
'    when no_data_found then',
'      -- go back to home page if no URL is registered.',
'      apex_util.redirect_url(p_url => apex_page.get_url(p_page => ''SEARCH''));',
'  end;',
'  -- log the request and redirect to actual download page if user is valid.',
'  tcw_util.log_download_history(:REDIRECT_LINK_NUM, :APP_USER, systimestamp);',
'  apex_util.redirect_url(p_url => l_link_url);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\6982\8981\306E\66F4\65B0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6982\8981\306E\66F4\65B0')
,p_step_sub_title=>unistr('\6982\8981\306E\66F4\65B0')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206160204'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(251767506875205101)
,p_name=>unistr('\8A8D\8B58\6E08\307F\30CF\30C3\30B7\30E5\30BF\30B0')
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select hashtag from tcw_hashtags where link_num = :P22_LINK_NUM order by 1'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16861145558176637)
,p_query_column_id=>1
,p_column_alias=>'HASHTAG'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(251767837821205104)
,p_plug_name=>unistr('\8AAC\660E')
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\30CF\30C3\30B7\30E5\30BF\30B0\3092\6982\8981\306B\8A18\8F09\3057\3066\8A8D\8B58\3055\305B\308B\3088\3046\306B\3057\305F\306E\3067\3059\304C\3001\6982\8981\3092\66F4\65B0\3059\308B\969B\306B\8CC7\6599\306E\60C5\5831\3092\5168\66F4\65B0\3059\308B\6C17\306B\306A\3089\306A\3044\306E\3067\3001\3053\306E\753B\9762\3092\4F5C\3063\3066\3044\307E\3059\3002\610F\56F3\3057\305F\3088\3046\306B\30CF\30C3\30B7\30E5\30BF\30B0\304C\8A8D\8B58\3055\308C\3066\3044\308B\304B\78BA\8A8D\3059\308B\305F\3081\3067\3082\3042\308A\307E\3059\3002\3053\3053\3067\306E\6982\8981\306E\66F4\65B0\306F\3001\6587\66F8\306E\66F4\65B0\65E5\3084\4ED6\306E\30C7\30FC\30BF\306B\5F71\97FF\3092\4E0E\3048\307E\305B\3093\3002')
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(251855286735340622)
,p_plug_name=>unistr('\6982\8981\306E\66F4\65B0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(251856071723340624)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16863224842176642)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(251856071723340624)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16863609311176642)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(251856071723340624)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P22_LINK_NUM'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16862132463176640)
,p_name=>'P22_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(251855286735340622)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Link Num'
,p_source=>'LINK_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16862469097176641)
,p_name=>'P22_ABSTRACT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(251855286735340622)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\6982\8981')
,p_source=>'ABSTRACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16866039624176646)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16863224842176642)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16866547119176647)
,p_event_id=>wwv_flow_api.id(16866039624176646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16864355355176644)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TCW_DOCUMENTS'
,p_attribute_02=>'TCW_DOCUMENTS'
,p_attribute_03=>'P22_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16864794020176644)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCW_DOCUMENTS'
,p_attribute_02=>'TCW_DOCUMENTS'
,p_attribute_03=>'P22_LINK_NUM'
,p_attribute_04=>'LINK_NUM'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16863953699176643)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Hashtag'
,p_process_sql_clob=>'tcw_util.save_hashtags(:P22_LINK_NUM, :P22_ABSTRACT);'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16863609311176642)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16865224269176645)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16865633200176645)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D0\30FC\30B8\30E7\30F3\5C65\6B74')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D0\30FC\30B8\30E7\30F3\5C65\6B74')
,p_step_sub_title=>unistr('\30D0\30FC\30B8\30E7\30F3\5C65\6B74')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129152034'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(192926904270612281)
,p_plug_name=>'Version History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select link_num, obj_version, obj_name, file_name, content_type, owner, sys.dbms_lob.getlength(link_object) as download from tcw_doc_archives where link_num = :P23_LINK_NUM'
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(192927034460612281)
,p_name=>'Version History'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'YUJI.NAKAKOSHI@ORACLE.COM'
,p_internal_uid=>179279886735019338
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16870158634183521)
,p_db_column_name=>'LINK_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Doc#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16870614095183523)
,p_db_column_name=>'OBJ_VERSION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\30D0\30FC\30B8\30E7\30F3')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16871020695183524)
,p_db_column_name=>'OBJ_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\30BF\30A4\30C8\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16871354666183524)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\30D5\30A1\30A4\30EB\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16871831256183526)
,p_db_column_name=>'CONTENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\30D5\30A1\30A4\30EB\5F62\5F0F')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16872190221183526)
,p_db_column_name=>'OWNER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\6700\7D42\66F4\65B0\8ECA')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16872564245183527)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\30C0\30A6\30F3\30ED\30FC\30C9')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>unistr('DOWNLOAD:TCW_DOC_ARCHIVES:LINK_OBJECT:LINK_NUM:OBJ_VERSION:CONTENT_TYPE:FILE_NAME:CREATION_DATE::attachment:\30C0\30A6\30F3\30ED\30FC\30C9:')
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(150015947813303286)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'32258'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LINK_NUM:OBJ_VERSION:OBJ_NAME:FILE_NAME:CONTENT_TYPE:OWNER:DOWNLOAD'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16873375920183529)
,p_name=>'P23_LINK_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(192926904270612281)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8')
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>unistr('TCWEB for All - \30B5\30A4\30F3\30A4\30F3')
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(16335936940626942)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181206123217'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16450295229627153)
,p_plug_name=>'TCWEB'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16368532886626976)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16454967887627170)
,p_plug_name=>unistr('\8A00\8A9E\30BB\30EC\30AF\30BF')
,p_parent_plug_id=>wwv_flow_api.id(16450295229627153)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16453061675627166)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16450295229627153)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30B5\30A4\30F3\30A4\30F3')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16450653406627157)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16450295229627153)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420505646627025)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16451061404627158)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16450295229627153)
,p_prompt=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_placeholder=>unistr('\30D1\30B9\30EF\30FC\30C9')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420505646627025)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16452205961627163)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16450295229627153)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\3092\8A18\61B6')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(16451368872627159)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16420505646627025)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('\3053\306E\30C1\30A7\30C3\30AF\30FB\30DC\30C3\30AF\30B9\3092\9078\629E\3059\308B\3068\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001"LOGIN_USERNAME_COOKIE"\3068\3044\3046\540D\524D\306E\6C38\7D9A\7684\306A\30D6\30E9\30A6\30B6cookie\306B\30E6\30FC\30B6\30FC\540D\304C\4FDD\5B58\3055\308C\307E\3059\3002'),
unistr('\6B21\56DE\30ED\30B0\30A4\30F3\30FB\30DA\30FC\30B8\306B\30A2\30AF\30BB\30B9\3059\308B\3068\3001'),
unistr('\30E6\30FC\30B6\30FC\540D\30D5\30A3\30FC\30EB\30C9\306B\3053\306E\5024\304C\81EA\52D5\7684\306B\79FB\5165\3055\308C\307E\3059\3002'),
'</p>',
'<p>',
unistr('\3053\306E\30C1\30A7\30C3\30AF\30FB\30DC\30C3\30AF\30B9\306E\9078\629E\3092\89E3\9664\3057\3001\30E6\30FC\30B6\30FC\540D\304C\3059\3067\306Bcookie\306B\4FDD\5B58\3055\308C\3066\3044\308B\5834\5408\3001'),
unistr('\7A7A\306E\5024\3067\4E0A\66F8\3055\308C\307E\3059\3002'),
unistr('\30D6\30E9\30A6\30B6\306E\958B\767A\8005\30C4\30FC\30EB\3092\4F7F\7528\3057\3066\3001cookie\3092\5B8C\5168\306B\524A\9664\3059\308B\3053\3068\3082\3067\304D\307E\3059\3002'),
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16453868084627168)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\8A2D\5B9A')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16453453440627167)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16454703673627169)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\30FB\30AD\30E3\30C3\30B7\30E5\306E\30AF\30EA\30A2')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16454336647627169)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Cookie\306E\30E6\30FC\30B6\30FC\540D\3092\53D6\5F97')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_api.create_page(
 p_id=>10000
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\7BA1\7406')
,p_alias=>'ADMIN'
,p_step_title=>unistr('\7BA1\7406')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\7BA1\7406\30DA\30FC\30B8\3067\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\6240\6709\8005(\7BA1\7406\8005)\306F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3092\69CB\6210\3057\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\5168\4F53\3067\4F7F\7528\3055\308C\308B\5171\901A\30C7\30FC\30BF\3092\7BA1\7406\3067\304D\307E\3059\3002'),
unistr('\7BA1\7406\8005\306F\3001\4F7F\7528\53EF\80FD\306A\8A2D\5B9A\306E\3044\305A\308C\304B\3092\9078\629E\3057\3066\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\8868\793A\65B9\6CD5\307E\305F\306F\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306B\4F7F\7528\53EF\80FD\306A\6A5F\80FD(\3042\308B\3044\306F\305D\306E\4E21\65B9)\3092\5FC5\8981\306B\5FDC\3058\3066\5909\66F4\3067\304D\307E\3059\3002</p>'),
unistr('<p>\3053\306E\30DA\30FC\30B8\3078\306E\30A2\30AF\30BB\30B9\306F\3001\7BA1\7406\8005\306E\307F\306B\5236\9650\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134754'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16597253341627483)
,p_plug_name=>unistr('\30D6\30EC\30C3\30C9\30AF\30E9\30E0')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16378389489626982)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(16322385651626917)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(16422090491627031)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16603357304627490)
,p_plug_name=>unistr('\52171')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347736066626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16603777801627491)
,p_plug_name=>unistr('\69CB\6210')
,p_parent_plug_id=>wwv_flow_api.id(16603357304627490)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(16597893774627485)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(16445187386627120)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16604209813627491)
,p_plug_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A4\30F3\30BF\30D5\30A7\30FC\30B9')
,p_parent_plug_id=>wwv_flow_api.id(16603357304627490)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(16598595595627486)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(16445640864627120)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16604566939627491)
,p_plug_name=>unistr('\30A2\30AF\30C6\30A3\30D3\30C6\30A3\30FB\30EC\30DD\30FC\30C8')
,p_parent_plug_id=>wwv_flow_api.id(16603357304627490)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(16599266088627487)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(16444914789627120)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16604982035627492)
,p_plug_name=>unistr('\52172')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347736066626954)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16605445884627492)
,p_plug_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1')
,p_parent_plug_id=>wwv_flow_api.id(16604982035627492)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(16444820296627120)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16606180350627493)
,p_plug_name=>unistr('ACL\60C5\5831')
,p_parent_plug_id=>wwv_flow_api.id(16605445884627492)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16343804811626948)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope   varchar2(45);',
'begin',
'    l_acl_scope   := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'') );',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'') );',
'    else',
'        sys.htp.p( apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope) );',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16606561011627494)
,p_name=>unistr('\30E6\30FC\30B6\30FC\6570\30EC\30DD\30FC\30C8')
,p_parent_plug_id=>wwv_flow_api.id(16605445884627492)
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from  APEX_APPL_ACL_ROLES r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16392938681626998)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16607264652627500)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16607665905627500)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16608095952627501)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16611222375627508)
,p_plug_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\30A2\30AF\30B7\30E7\30F3')
,p_parent_plug_id=>wwv_flow_api.id(16605445884627492)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(16601612938627488)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16611633573627509)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_parent_plug_id=>wwv_flow_api.id(16604982035627492)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_api.id(16444988891627120)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16611982265627509)
,p_name=>unistr('\30EC\30DD\30FC\30C8')
,p_parent_plug_id=>wwv_flow_api.id(16611633573627509)
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16392938681626998)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16612663759627515)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16613054835627515)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16614993254627522)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_parent_plug_id=>wwv_flow_api.id(16611633573627509)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(16602737650627489)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(16409079776627015)
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16605836254627493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16605445884627492)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\8FFD\52A0')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16610326302627507)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA\6642\306B\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16605836254627493)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16610770055627508)
,p_event_id=>wwv_flow_api.id(16610326302627507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16606561011627494)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_api.create_page(
 p_id=>10010
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\69CB\6210\30AA\30D7\30B7\30E7\30F3')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\69CB\6210\30AA\30D7\30B7\30E7\30F3')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16445187386627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\69CB\6210\8A2D\5B9A\306B\3088\3063\3066\3001\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306B\5BFE\3057\3066\7279\5B9A\306E\6A5F\80FD\3092\4F7F\7528\53EF\80FD(\6709\52B9)\306B\3059\308B\304B\3001\4F7F\7528\4E0D\53EF(\7121\52B9)\306B\3059\308B\3053\3068\304C\3067\304D\307E\3059\3002</p>'),
unistr('<p>\7279\5B9A\306E\6A5F\80FD\3092100%\6E96\5099\3067\304D\3066\3044\306A\3044\5834\5408\3001\307E\305F\306F\4E00\6642\7684\306B\524A\9664\3059\308B\5FC5\8981\304C\3042\308B\5834\5408\3001<strong>\300C\7121\52B9\300D</strong>\3092\30AF\30EA\30C3\30AF\3057\307E\3059\3002'),
unistr('\4F7F\7528\53EF\80FD\306B\306A\3063\305F\3089\3001<strong>\300C\6709\52B9\300D</strong>\3092\30AF\30EA\30C3\30AF\3059\308B\3060\3051\3067\3059\3002</p>'),
unistr('<p><em><strong>\6CE8\610F:</strong> \3053\3053\3067\884C\3063\305F\5909\66F4\306F\3001\73FE\5728\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3092\5B9F\884C\4E2D\306E\500B\5225\306E\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306B\306F\53CD\6620\3055\308C\307E\305B\3093\3002\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\304C\30B5\30A4\30F3\30A2\30A6\30C8\3057\3066\304B\3089\518D\5EA6\30B5\30A4\30F3\30A4\30F3\3059\308B\3068\3001\5909\66F4\3055\308C\305F\6A5F\80FD\8A2D\5B9A\304C\9069\7528\3055\308C\307E\3059\3002</em></p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134751'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16457792501627190)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16457978138627191)
,p_plug_name=>unistr('\69CB\6210\30AA\30D7\30B7\30E7\30F3')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end ),',
'         p_attributes => ''style="white-space:pre;"'') "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'', ''APPLICATION_CONFIGURATION'')'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16459000548627192)
,p_name=>unistr('\69CB\6210\30AA\30D7\30B7\30E7\30F3')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>2811852823034249
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16459146887627203)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16459453038627216)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\6A5F\80FD')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16459894278627216)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\30B9\30C6\30FC\30BF\30B9')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16460258312627216)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\8AAC\660E')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16460676306627217)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\66F4\65B0')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16461077370627217)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\66F4\65B0\8005')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16461504567627218)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\73FE\884C\306E\30B9\30C6\30FC\30BF\30B9')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16462148472627220)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28151'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16463814417627223)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16457792501627190)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16463094879627222)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16457978138627191)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16464568151627225)
,p_branch_name=>unistr('\7BA1\7406\30DA\30FC\30B8\306E\30EA\30D5\30EC\30C3\30B7\30E5')
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16464223205627224)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\66F4\65B0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\69CB\6210\30AA\30D7\30B7\30E7\30F3\304C\66F4\65B0\3055\308C\307E\3057\305F\3002 ')
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_api.create_page(
 p_id=>10020
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\5916\89B3')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\5916\89B3')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16445640864627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\8868\793A\306B\4F7F\7528\3059\308B\30C7\30D5\30A9\30EB\30C8\306E\30AB\30E9\30FC\30FB\30B9\30AD\30FC\30E0\3092\9078\629E\3057\307E\3059\3002</p>'),
unistr('<p><strong>\300C\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306B\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\306E\9078\629E\3092\8A31\53EF\300D</strong>\304C\9078\629E\3055\308C\3066\3044\308B\5834\5408\3001\5404\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306F\3001\30DB\30FC\30E0\30DA\30FC\30B8\306E\5DE6\4E0B\9685\306B\3042\308B<em>\300C\30AB\30B9\30BF\30DE\30A4\30BA\300D</em>\30EA\30F3\30AF\3092\30AF\30EA\30C3\30AF\3057\3066\3001\4F7F\7528\53EF\80FD\306A\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\304B\3089\9078\629E\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134751'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16464913563627226)
,p_plug_name=>unistr('\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16465038676627226)
,p_plug_name=>unistr('\5916\89B3\306E\69CB\6210')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16466802449627228)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16464913563627226)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16466332472627227)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16464913563627226)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16467221357627228)
,p_branch_name=>unistr('\7BA1\7406\30DA\30FC\30B8\306B\30D6\30E9\30F3\30C1')
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16467516481627228)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16465038676627226)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30C7\30B9\30AF\30C8\30C3\30D7\30FB\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>unistr('\30C7\30D5\30A9\30EB\30C8\306E\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\306F\3059\3079\3066\306E\30E6\30FC\30B6\30FC\306B\9069\7528\3055\308C\307E\3059\3002')
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16468207901627231)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16465038676627226)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306E\30C6\30FC\30DE\30FB\30D7\30EA\30D5\30A1\30EC\30F3\30B9')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ui.theme_style_by_user_pref',
'  from apex_application_themes t, apex_appl_user_interfaces ui',
' where ui.application_id = t.application_id',
'   and ui.theme_number   = t.theme_number',
'   and t.application_id  = :app_id ',
'   and t.ui_type_name    = ''DESKTOP''',
'   and t.is_current      = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_api.id(16468265602627231)||'.'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(16420505646627025)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('\9078\629E\3059\308B\3068\3001\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306F\3001\300C\30AB\30B9\30BF\30DE\30A4\30BA\300D\30EA\30F3\30AF\3092\4F7F\7528\3057\3066\72EC\81EA\306E\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\3092\9078\629E\3067\304D\307E\3059\3002')
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16465238782627226)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\53D6\308A\6D88\3059')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16466332472627227)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16469666676627234)
,p_event_id=>wwv_flow_api.id(16465238782627226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16470204127627235)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30C6\30FC\30DE\30FB\30B9\30BF\30A4\30EB\306E\4FDD\5B58')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => c1.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\5916\89B3\306E\8A2D\5B9A\304C\4FDD\5B58\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16470619428627236)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306E\30B9\30BF\30A4\30EB\30FB\30D7\30EA\30D5\30A1\30EC\30F3\30B9\306E\4FDD\5B58')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for c1 in ( select ui.theme_number',
'                from apex_application_themes t,',
'                    apex_appl_user_interfaces ui',
'                where ui.application_id = t.application_id',
'                    and ui.theme_number   = t.theme_number',
'                    and t.application_id  = :APP_ID',
'                    and t.ui_type_name    = ''DESKTOP''',
'                    and t.is_current      = ''Yes'' ) loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => c1.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'  end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\5916\89B3\306E\8A2D\5B9A\304C\4FDD\5B58\3055\308C\307E\3057\305F\3002')
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_api.create_page(
 p_id=>10030
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30A2\30AF\30C6\30A3\30D3\30C6\30A3\30FB\30C0\30C3\30B7\30E5\30DC\30FC\30C9')
,p_alias=>'DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30A2\30AF\30C6\30A3\30D3\30C6\30A3\30FB\30C0\30C3\30B7\30E5\30DC\30FC\30C9')
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444914789627120)
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134752'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16470886744627236)
,p_plug_name=>unistr('1\6642\9593\5F53\305F\308A\306E\30DA\30FC\30B8\30FB\30A4\30D9\30F3\30C8')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16470993814627236)
,p_region_id=>wwv_flow_api.id(16470886744627236)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16473221626627239)
,p_chart_id=>wwv_flow_api.id(16470993814627236)
,p_seq=>10
,p_name=>unistr('\30B7\30EA\30FC\30BA1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select  w.start_tm log_time,',
'    (   select count(*)',
'        from apex_activity_log l',
'        where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16473790079627241)
,p_chart_id=>wwv_flow_api.id(16470993814627236)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16474359757627242)
,p_chart_id=>wwv_flow_api.id(16470993814627236)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16471082628627236)
,p_plug_name=>unistr('\6700\3082\30A2\30AF\30C6\30A3\30D6\306A\30DA\30FC\30B8')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16471216240627236)
,p_region_id=>wwv_flow_api.id(16471082628627236)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16478175763627245)
,p_chart_id=>wwv_flow_api.id(16471216240627236)
,p_seq=>10
,p_name=>unistr('\30B7\30EA\30FC\30BA1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value ',
'from',
'(',
'select step_id,',
'    count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and step_id is not null',
'group by step_id',
'order by 2 desc',
') x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16478798800627245)
,p_chart_id=>wwv_flow_api.id(16471216240627236)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16479356963627246)
,p_chart_id=>wwv_flow_api.id(16471216240627236)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16471331729627236)
,p_plug_name=>unistr('\30C8\30C3\30D7\30FB\30E6\30FC\30B6\30FC')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16369012041626976)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16471441622627236)
,p_region_id=>wwv_flow_api.id(16471331729627236)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16475684483627243)
,p_chart_id=>wwv_flow_api.id(16471441622627236)
,p_seq=>10
,p_name=>unistr('\30B7\30EA\30FC\30BA1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( lower(userid), apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( lower(userid), apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16476311053627244)
,p_chart_id=>wwv_flow_api.id(16471441622627236)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(16476862645627244)
,p_chart_id=>wwv_flow_api.id(16471441622627236)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16471474526627236)
,p_name=>unistr('\6700\65B0\306E\30A8\30E9\30FC')
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    sqlerrm label,',
'    time_stamp value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'and sqlerrm is not null',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16480434090627258)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30E9\30D9\30EB')
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16480801145627259)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\5024')
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16471635376627236)
,p_name=>unistr('\6700\65B0\306E\30A2\30AF\30C6\30A3\30D3\30C6\30A3')
,p_template=>wwv_flow_api.id(16369012041626976)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(USERID) as username,',
'    max(time_stamp) as last_activity',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'    and lower(USERID) is not null',
'group by lower(USERID)',
'order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\30A2\30AF\30C6\30A3\30D3\30C6\30A3\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16483568457627271)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16484034894627272)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\6700\5F8C\306E\30A2\30AF\30C6\30A3\30D3\30C6\30A3')
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16471676778627236)
,p_plug_name=>unistr('\30D5\30A3\30EB\30BF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16486295148627278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16470886744627236)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\8A73\7D30\306E\8868\793A')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16486666656627279)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16471082628627236)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\8A73\7D30\306E\8868\793A')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16487133485627279)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16471331729627236)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\8A73\7D30\306E\8868\793A')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16487458332627280)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16471474526627236)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\8A73\7D30\306E\8868\793A')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16471832705627236)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16471676778627236)
,p_item_default=>'900'
,p_prompt=>unistr('\6642\9593\67A0')
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16471926812627236)
,p_name=>unistr('\30D5\30A3\30EB\30BF\306E\5909\66F4')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16489128125627283)
,p_event_id=>wwv_flow_api.id(16471926812627236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16470886744627236)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16489579531627284)
,p_event_id=>wwv_flow_api.id(16471926812627236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16471331729627236)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16490066946627284)
,p_event_id=>wwv_flow_api.id(16471926812627236)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16471082628627236)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16490568420627284)
,p_event_id=>wwv_flow_api.id(16471926812627236)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16471474526627236)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16491122045627285)
,p_event_id=>wwv_flow_api.id(16471926812627236)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16471635376627236)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_api.create_page(
 p_id=>10031
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30C8\30C3\30D7\30FB\30E6\30FC\30B6\30FC')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30C8\30C3\30D7\30FB\30E6\30FC\30B6\30FC')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Remove padding around dialog page */',
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; background-color: #a6ffa6; min-width: 32px; }',
'span.hour.is-over1k { background-color: #7bdc7b; }',
'span.hour.is-null { background-color: #E0E0E0; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444914789627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30EC\30DD\30FC\30C8\3068\30C1\30E3\30FC\30C8\3092\4F7F\7528\3057\3066\3001\6307\5B9A\3057\305F\6642\9593\67A0\3067\6700\5927\306E\30DA\30FC\30B8\30FB\30D3\30E5\30FC\3092\8A18\9332\3057\305F\30E6\30FC\30B6\30FC\3092\53C2\7167\3057\307E\3059\3002</p>'),
unistr('<p>\30EC\30DD\30FC\30C8\6642\9593\67A0(\30C7\30D5\30A9\30EB\30C8 = 1\65E5)\3092\9078\629E\3057\3001\30DA\30FC\30B8\306E\4E00\756A\4E0A\306B\3042\308B\30EC\30DD\30FC\30C8\30FB\30A2\30A4\30B3\30F3\3068\30C1\30E3\30FC\30C8\30FB\30A2\30A4\30B3\30F3\304B\3089\9078\629E\3057\307E\3059\3002</p>'),
unistr('<p>\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3067\306F\3001\691C\7D22\30D5\30A3\30FC\30EB\30C9\3092\4F7F\7528\3059\308B\304B\3001<strong>\300C\30E6\30FC\30B6\30FC\300D</strong>\5217\30D8\30C3\30C0\30FC\3092\9078\629E\3057\3066\7279\5B9A\306E\30E6\30FC\30B6\30FC\3092\9078\629E\3057\307E\3059\3002<strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5217\306E\8868\793A/\975E\8868\793A\3001\30DA\30FC\30B8\3054\3068\306E\884C\6570\3001\30D5\30A3\30EB\30BF\306A\3069\306E\591A\304F\306E\6A5F\80FD\3092\5B9F\884C\3067\304D\307E\3059\3002<strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16514410491627343)
,p_plug_name=>unistr('\30C8\30C3\30D7\30FB\30E6\30FC\30B6\30FC')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select lower(userid)                as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by lower(userid)) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16515923137627348)
,p_name=>unistr('\30C8\30C3\30D7\30FB\30E6\30FC\30B6\30FC')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>2868775412034405
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16516044232627352)
,p_db_column_name=>'THE_USER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16516289923627354)
,p_db_column_name=>'HOURS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\6642\9593\3054\3068\306E\30A2\30AF\30C6\30A3\30D3\30C6\30A3')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16516662277627355)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\30DA\30FC\30B8\30FB\30A4\30D9\30F3\30C8')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16517118264627356)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\4E2D\9593\7D4C\904E')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16517506171627357)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\30D5\30A7\30C3\30C1\3055\308C\305F\884C')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16517870911627358)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('IR\691C\7D22')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16518305805627359)
,p_db_column_name=>'ERRORS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('\30A8\30E9\30FC')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16518719654627360)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16519432026627361)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28723'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16514455329627343)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16514711676627343)
,p_plug_name=>unistr('\4E0A\4F4D\30E6\30FC\30B6\30FC\30FB\30C1\30E3\30FC\30C8')
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(16514823517627343)
,p_region_id=>wwv_flow_api.id(16514711676627343)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(16522954953627367)
,p_chart_id=>wwv_flow_api.id(16514823517627343)
,p_seq=>10
,p_name=>'Top Users'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(userid) as userid,',
'    count(*) as page_views',
'from apex_activity_log',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'    and userid is not null',
'group by lower(userid)',
'order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16520275200627363)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16514410491627343)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16514912526627343)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16514455329627343)
,p_item_default=>'REPORT'
,p_prompt=>unistr('\8868\793A\5F62\5F0F')
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_api.id(16523485773627367)||'.'
,p_field_template=>wwv_flow_api.id(16420505646627025)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16515134313627344)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16514455329627343)
,p_item_default=>'900'
,p_prompt=>unistr('\6642\9593\67A0')
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16514645136627343)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16521565308627364)
,p_event_id=>wwv_flow_api.id(16514645136627343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16514410491627343)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16524986720627368)
,p_event_id=>wwv_flow_api.id(16514645136627343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16514410491627343)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_api.create_page(
 p_id=>10032
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A8\30E9\30FC\30FB\30ED\30B0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A8\30E9\30FC\30FB\30ED\30B0')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444914789627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30DA\30FC\30B8\3067\306F\3001\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\3088\3063\3066\8A18\9332\3055\308C\305F\3059\3079\3066\306E\4E88\671F\3057\306A\3044\30A8\30E9\30FC\306E\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\304C\63D0\4F9B\3055\308C\307E\3059\3002</p>'),
unistr('<p>\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30BD\30FC\30C8\304A\3088\3073\30D5\30A3\30EB\30BF\3059\308B\304B\3001<strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3057\3066\5217\8868\793A\3068\591A\304F\306E\8FFD\52A0\306E\62E1\5F35\6A5F\80FD\3092\30AB\30B9\30BF\30DE\30A4\30BA\3057\307E\3059\3002<strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134752'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16509378226627331)
,p_plug_name=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A8\30E9\30FC\30FB\30ED\30B0')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    step_id,',
'    userid,',
'    time_stamp err_time,',
'    sqlerrm,',
'    sqlerrm_component_type,',
'    sqlerrm_component_name',
'from apex_activity_log',
'where flow_id = :app_id',
'and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16510446797627333)
,p_name=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30A8\30E9\30FC\30FB\30ED\30B0')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'ADMIN'
,p_internal_uid=>2863299072034390
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16510527341627336)
,p_db_column_name=>'STEP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\30DA\30FC\30B8')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16510928429627337)
,p_db_column_name=>'USERID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16511318141627337)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\767A\751F')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16511733794627338)
,p_db_column_name=>'SQLERRM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\30E1\30C3\30BB\30FC\30B8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16512065134627339)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\30B3\30F3\30C6\30AD\30B9\30C8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16512502051627339)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('\30B3\30F3\30DD\30FC\30CD\30F3\30C8\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16513241137627340)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28661'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16514102564627343)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16509378226627331)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_api.create_page(
 p_id=>10033
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30DA\30FC\30B8\30FB\30D1\30D5\30A9\30FC\30DE\30F3\30B9')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30DA\30FC\30B8\30FB\30D1\30D5\30A9\30FC\30DE\30F3\30B9')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444914789627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30DA\30FC\30B8\3067\306F\3001\30DA\30FC\30B8\30FB\30D1\30D5\30A9\30FC\30DE\30F3\30B9\3068\4EBA\6C17\5EA6\306E\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\304C\63D0\4F9B\3055\308C\307E\3059\3002\30EC\30DD\30FC\30C8\306F\3001\4E2D\9593\7D4C\904E\6642\9593\3068\30DA\30FC\30B8\30FB\30D3\30E5\30FC\306E\6570\3092\639B\3051\308B\3053\3068\3067\8A08\7B97\3055\308C\308B<strong>\300C\91CD\307F\4ED8\3051\30D1\30D5\30A9\30FC\30DE\30F3\30B9\300D</strong>\3067\9806\5E8F\4ED8\3051\3055\308C\307E\3059\3002</p>'),
unistr('<p>\5FC5\8981\306B\5FDC\3058\3066\3001\30DA\30FC\30B8\306E\4E00\756A\4E0A\306B\3042\308B\30EC\30DD\30FC\30C8\6642\9593\67A0(\30C7\30D5\30A9\30EB\30C8 = 1\65E5)\3092\9078\629E\3057\307E\3059\3002<br>'),
unistr('\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30BD\30FC\30C8\304A\3088\3073\30D5\30A3\30EB\30BF\3059\308B\304B\3001<strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3057\3066\5217\8868\793A\3068\591A\304F\306E\8FFD\52A0\306E\62E1\5F35\6A5F\80FD\3092\30AB\30B9\30BF\30DE\30A4\30BA\3057\307E\3059\3002<strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134752'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16499732704627308)
,p_plug_name=>unistr('\30DA\30FC\30B8\30FB\30D1\30D5\30A9\30FC\30DE\30F3\30B9')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16500657229627309)
,p_name=>unistr('\30DA\30FC\30B8\30FB\30D1\30D5\30A9\30FC\30DE\30F3\30B9')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>2853509504034366
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16500797249627316)
,p_db_column_name=>'PAGE'
,p_display_order=>15
,p_column_identifier=>'A'
,p_column_label=>unistr('\30DA\30FC\30B8')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16501182221627319)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>25
,p_column_identifier=>'B'
,p_column_label=>unistr('\30DA\30FC\30B8\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16501595575627319)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>35
,p_column_identifier=>'C'
,p_column_label=>unistr('\4E2D\9593\7D4C\904E')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16502021942627321)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>45
,p_column_identifier=>'D'
,p_column_label=>unistr('\91CD\307F\4ED8\3051\30D1\30D5\30A9\30FC\30DE\30F3\30B9')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16502414832627321)
,p_db_column_name=>'ERRORS'
,p_display_order=>55
,p_column_identifier=>'E'
,p_column_label=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16502787327627321)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>65
,p_column_identifier=>'F'
,p_column_label=>unistr('\500B\5225\30E6\30FC\30B6\30FC')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16503196643627322)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>75
,p_column_identifier=>'G'
,p_column_label=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30BB\30C3\30B7\30E7\30F3')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16503551066627323)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>85
,p_column_identifier=>'H'
,p_column_label=>unistr('\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16503950243627323)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>95
,p_column_identifier=>'I'
,p_column_label=>unistr('\6700\5927\7D4C\904E\6642\9593')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16504357996627324)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>105
,p_column_identifier=>'J'
,p_column_label=>unistr('\884C\5408\8A08')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16504813188627324)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>115
,p_column_identifier=>'K'
,p_column_label=>unistr('\90E8\5206\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16505166474627325)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>125
,p_column_identifier=>'L'
,p_column_label=>unistr('\5168\4F53\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16505588456627326)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>135
,p_column_identifier=>'M'
,p_column_label=>unistr('\6700\5C0F\7D4C\904E\6642\9593')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16505973183627326)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>145
,p_column_identifier=>'N'
,p_column_label=>unistr('\5E73\5747\7D4C\904E')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16506663201627327)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28596'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16499785802627308)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16507549229627329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16499732704627308)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16499636924627308)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16499785802627308)
,p_item_default=>'900'
,p_prompt=>unistr('\6642\9593\67A0')
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16499923656627308)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16508929055627331)
,p_event_id=>wwv_flow_api.id(16499923656627308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16499732704627308)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_api.create_page(
 p_id=>10034
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444914789627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30DA\30FC\30B8\3067\306F\3001\6700\65B0\306E\30DA\30FC\30B8\30FB\30D3\30E5\30FC\306E\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\304C\63D0\4F9B\3055\308C\307E\3059\3002</p>'),
unistr('<p>\5FC5\8981\306B\5FDC\3058\3066\3001\30DA\30FC\30B8\306E\4E00\756A\4E0A\306B\3042\308B\30EC\30DD\30FC\30C8\6642\9593\67A0(\30C7\30D5\30A9\30EB\30C8 = 1\65E5)\3092\9078\629E\3057\307E\3059\3002<br>'),
unistr('\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30BD\30FC\30C8\304A\3088\3073\30D5\30A3\30EB\30BF\3059\308B\304B\3001<strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3057\3066\5217\8868\793A\3068\591A\304F\306E\8FFD\52A0\306E\62E1\5F35\6A5F\80FD\3092\30AB\30B9\30BF\30DE\30A4\30BA\3057\307E\3059\3002<strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134752'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16491568212627286)
,p_plug_name=>unistr('\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    lower(userid) user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16492640563627286)
,p_name=>unistr('\30DA\30FC\30B8\30FB\30D3\30E5\30FC')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>2845492838034343
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16492649323627293)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\30DA\30FC\30B8\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16493116647627296)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16493473106627296)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\30BF\30A4\30E0\30B9\30BF\30F3\30D7')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16493867447627297)
,p_db_column_name=>'ELAPSED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\7D4C\904E')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16494312104627298)
,p_db_column_name=>'PAGE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\30DA\30FC\30B8')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16494671407627298)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('\30E2\30FC\30C9')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16495082976627299)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('\30B3\30F3\30DD\30FC\30CD\30F3\30C8\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16495541463627300)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('\884C\6570')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16495944260627301)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('IR\691C\7D22')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16496281231627301)
,p_db_column_name=>'ERROR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('\30A8\30E9\30FC')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16496978058627302)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28499'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16491663287627286)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16497867623627303)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16491568212627286)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16491507823627286)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16491663287627286)
,p_item_default=>'900'
,p_prompt=>unistr('\6642\9593\67A0')
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'      val as seconds',
' from table( apex_util.get_timeframe_lov_data )',
'order by insert_order'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16491839242627286)
,p_name=>unistr('\30EC\30DD\30FC\30C8\306E\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16499186097627307)
,p_event_id=>wwv_flow_api.id(16491839242627286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16491568212627286)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_api.create_page(
 p_id=>10040
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\306E\69CB\6210')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\306E\69CB\6210')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444820296627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306E\9069\5207\306A\9078\629E\9805\76EE\3092\9078\629E\3057\307E\3059\3002<br>'),
unistr('<strong>\300C\3044\3044\3048\300D</strong>\3092\9078\629E\3059\308B\3068\3001\6307\5B9A\3057\305F\30E6\30FC\30B6\30FC\306E\307F\304C\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3067\304D\308B\3053\3068\306B\306A\308B\305F\3081\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\30BB\30AD\30E5\30EA\30C6\30A3\304C\5411\4E0A\3057\307E\3059\3002'),
unistr('\305F\3060\3057\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\304C\5927\898F\6A21\306A\30E6\30FC\30B6\30FC\30FB\30B3\30DF\30E5\30CB\30C6\30A3\3092\6301\3063\3066\3044\308B\5834\5408\306F\3001\30E6\30FC\30B6\30FC\306E\7BA1\7406\304C\8CA0\62C5\306B\306A\308B\53EF\80FD\6027\304C\3042\308B\305F\3081\3001<strong>\300C\306F\3044\300D</strong>\3092\512A\5148\7684\306B\9078\629E\3057\3066\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\7BA1\7406\8005\3068\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\307F\3092\5165\529B\3067\304D\307E\3059\3002<br>'),
unistr('<strong>\300C\306F\3044\300D</strong>\3092\9078\629E\3059\308B\5834\5408\3001\30E6\30FC\30B6\30FC\30FB\30EA\30B9\30C8\306B\542B\3081\306A\3044\30E6\30FC\30B6\30FC\306E\51E6\7406\65B9\6CD5\3082\9078\629E\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</p>'),
unistr('<p>\30E6\30FC\30B6\30FC\540D\306B\5BFE\3057\3066\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3092\8981\6C42\3059\308B\304B\3001\4EFB\610F\306E\82F1\6570\5B57\5024\3092\4F7F\7528\53EF\80FD\306B\3059\308B\304B\3092\9078\629E\3057\307E\3059\3002<br>'),
unistr('\901A\5E38\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067Oracle Access Manager\3084SSO\306A\3069\306E\4E2D\592E\7BA1\7406\8A8D\8A3C\30B9\30AD\30FC\30E0\3092\4F7F\7528\3057\3066\3044\308B(\307E\305F\306F\5C06\6765\4F7F\7528\3059\308B\3088\3046\306B\69CB\6210\3059\308B)\5834\5408\3001\3053\306E\8A2D\5B9A\306F<strong>\300C\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\300D</strong>\306B\8A2D\5B9A\3059\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</p>'),
unistr('<p><em><strong>\6CE8\610F:</strong> \3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001\30EA\30FC\30C0\30FC\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\304A\3088\3073\7BA1\7406\8005\3068\3044\30463\3064\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\304C\30B5\30DD\30FC\30C8\3055\308C\307E\3059\3002'),
'<ul>',
unistr('  <li><strong>\30EA\30FC\30C0\30FC</strong>\306F\3001\3059\3079\3066\306E\60C5\5831\306B\5BFE\3059\308B\8AAD\53D6\308A\5C02\7528\30A2\30AF\30BB\30B9\6A29\3092\6301\3061\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF</strong>\306F\3001\60C5\5831\306E\4F5C\6210\3001\7DE8\96C6\304A\3088\3073\524A\9664\304C\53EF\80FD\3067\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\7BA1\7406\8005</strong>\306F\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\6A5F\80FD\306B\52A0\3048\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\300C\7BA1\7406\300D\30BB\30AF\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3057\3066\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\69CB\6210\3092\5B9F\884C\3067\304D\307E\3059\3002</li>'),
'</ul>',
'</em></p>'))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16525398599627369)
,p_plug_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\69CB\6210')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16525503104627369)
,p_plug_name=>unistr('\30C0\30A4\30A2\30ED\30B0\30FB\30DC\30BF\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16526949383627370)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16525503104627369)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16525589879627369)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16525503104627369)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16527714232627371)
,p_branch_name=>unistr('\7BA1\7406\30DA\30FC\30B8\306B\79FB\52D5')
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16528041470627371)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16525398599627369)
,p_prompt=>unistr('\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306F\3001\8AB0\3067\3082\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3067\304D\307E\3059')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(16420588416627027)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('\3059\3079\3066\306E\30E6\30FC\30B6\30FC\304C\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\306B\5B9A\7FA9\3055\308C\3066\3044\308B\5834\5408\3001<strong>\300C\3044\3044\3048\300D</strong>\3092\9078\629E\3057\307E\3059\3002\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\306B\5B58\5728\3057\306A\3044\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\3082\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3092\4F7F\7528\3059\308B\5834\5408\3001<strong>\300C\306F\3044\300D</strong>\3092\9078\629E\3057\307E\3059\3002')
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16525666994627369)
,p_name=>unistr('\30E2\30FC\30C0\30EB\306E\53D6\6D88')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16525589879627369)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16528733291627372)
,p_event_id=>wwv_flow_api.id(16525666994627369)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16529160052627372)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACCESS CONTROL ENABLED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\306E\8A2D\5B9A\304C\4FDD\5B58\3055\308C\307E\3057\305F\3002')
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_api.create_page(
 p_id=>10041
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444820296627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30DA\30FC\30B8\306B\306F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30E6\30FC\30B6\30FC\3068\4ED8\4E0E\3055\308C\3066\3044\308B\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\306E\30EC\30DD\30FC\30C8\304C\8868\793A\3055\308C\307E\3059\3002</p>'),
unistr('<p>\5217\30D8\30C3\30C0\30FC\3092\30AF\30EA\30C3\30AF\3057\3066\30C7\30FC\30BF\3092\30BD\30FC\30C8\304A\3088\3073\30D5\30A3\30EB\30BF\3059\308B\304B\3001<strong>\300C\30A2\30AF\30B7\30E7\30F3\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3057\3066\5217\8868\793A\3068\591A\304F\306E\8FFD\52A0\306E\62E1\5F35\6A5F\80FD\3092\30AB\30B9\30BF\30DE\30A4\30BA\3057\307E\3059\3002<br>'),
unistr('<strong>\300C\30EA\30BB\30C3\30C8\300D</strong>\30DC\30BF\30F3\3092\30AF\30EA\30C3\30AF\3059\308B\3068\3001\5BFE\8A71\30E2\30FC\30C9\30FB\30EC\30DD\30FC\30C8\3092\30C7\30D5\30A9\30EB\30C8\8A2D\5B9A\306B\623B\3059\3053\3068\304C\3067\304D\307E\3059\3002</p>'),
unistr('<p>\7DE8\96C6\30A2\30A4\30B3\30F3(\9EC4\8272\306E\925B\7B46)\3092\30AF\30EA\30C3\30AF\3057\3066\30E6\30FC\30B6\30FC\306E\8A73\7D30\3068\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\3092\7DE8\96C6\3059\308B\304B\3001\30E6\30FC\30B6\30FC\3092\524A\9664\3057\307E\3059\3002</p>'),
unistr('<p>\30EC\30DD\30FC\30C8\306E\4E00\756A\4E0A\306B\3042\308B<strong>\300C\30E6\30FC\30B6\30FC\306E\8FFD\52A0\300D</strong>\3092\30AF\30EA\30C3\30AF\3057\3066\3001\65B0\3057\3044\30E6\30FC\30B6\30FC\3068\305D\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\3092\8FFD\52A0\3057\307E\3059\3002</p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16529625566627373)
,p_plug_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   lower(user_name) USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16530758540627374)
,p_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::::P10042_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ADMIN'
,p_internal_uid=>2883610815034431
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16530890667627378)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16531280915627379)
,p_db_column_name=>'USERNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16531732112627380)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\30ED\30FC\30EB')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16532362554627381)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28853'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16533305640627381)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16529625566627373)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16533670797627382)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16529625566627373)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16534063904627382)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16529625566627373)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&SESSION.::&DEBUG.:10042'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16529746673627373)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA\6642\306B\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16529625566627373)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16534702415627383)
,p_event_id=>wwv_flow_api.id(16529746673627373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16529625566627373)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_api.create_page(
 p_id=>10042
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_alias=>'USER_ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30E6\30FC\30B6\30FC\30FB\30A2\30AF\30BB\30B9\306E\7BA1\7406')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444820296627120)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\3053\306E\30D5\30A9\30FC\30E0\3092\4F7F\7528\3057\3066\3001\30E6\30FC\30B6\30FC\3068\305D\306E\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\3092\5165\529B\3057\3001\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\3092\8A2D\5B9A\3057\307E\3059\3002'),
unistr('<em>\300C\30A2\30AF\30BB\30B9\5236\5FA1\306E\69CB\6210\300D</em>\3067\5B9A\7FA9\3057\305F\8A2D\5B9A\306B\3088\3063\3066\3001\30E6\30FC\30B6\30FC\540D\3092\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\306B\3059\308B\5FC5\8981\304C\3042\308B\304B\3001\4EFB\610F\306E\82F1\6570\5B57\5165\529B\3092\53EF\80FD\306B\3059\308B\304B\304C\6C7A\5B9A\3055\308C\307E\3059\3002</p>'),
unistr('<p>\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001\30EA\30FC\30C0\30FC\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\304A\3088\3073\7BA1\7406\8005\3068\3044\30463\3064\306E\30A2\30AF\30BB\30B9\30FB\30EC\30D9\30EB\304C\30B5\30DD\30FC\30C8\3055\308C\307E\3059\3002</p>'),
'<ul>',
unistr('  <li><strong>\30EA\30FC\30C0\30FC</strong>\306F\3001\3059\3079\3066\306E\60C5\5831\306B\5BFE\3059\308B\8AAD\53D6\308A\5C02\7528\30A2\30AF\30BB\30B9\6A29\3092\6301\3061\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF</strong>\306F\3001\60C5\5831\306E\4F5C\6210\3001\7DE8\96C6\304A\3088\3073\524A\9664\304C\53EF\80FD\3067\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\7BA1\7406\8005</strong>\306F\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\6A5F\80FD\306B\52A0\3048\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\300C\7BA1\7406\300D\30BB\30AF\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3057\3066\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\69CB\6210\3092\5B9F\884C\3067\304D\307E\3059\3002</li>'),
'</ul>',
unistr('<p>\65E2\5B58\306E\30E6\30FC\30B6\30FC\3092\7DE8\96C6\3059\308B\5834\5408\3001\305D\306E\30A2\30AB\30A6\30F3\30C8\304C\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\30A2\30AF\30BB\30B9\3057\306A\3044\3088\3046\306B\30ED\30C3\30AF\3067\304D\307E\3059\3002</p>'),
unistr('<p><em><strong>\6CE8\610F:</strong> Oracle Application Express\30A2\30AB\30A6\30F3\30C8\3092\4F7F\7528\3059\308B\5834\5408\3001\3053\3053\3067\5165\529B\3059\308B\30E6\30FC\30B6\30FC\306F\3001\305D\306E\30D1\30B9\30EF\30FC\30C9\3082\8A2D\5B9A\3067\304D\308B\30EF\30FC\30AF\30B9\30DA\30FC\30B9\7BA1\7406\8005\306B\3088\3063\3066\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\3068\3057\3066\5B9A\7FA9\3055\308C\3066\3044\308B\5FC5\8981\304C\3042\308A\307E\3059\3002</em></p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16535243436627383)
,p_plug_name=>unistr('\30D5\30A9\30FC\30E0\30FB\30A2\30A4\30C6\30E0\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16535263285627384)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16535382846627384)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16535263285627384)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16535543853627384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16535263285627384)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16535580322627384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16535263285627384)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16535721285627384)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16535263285627384)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16535848173627384)
,p_name=>'P10042_USERNAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16535243436627383)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(16421128635627028)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16538240939627387)
,p_name=>'P10042_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16535243436627383)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16538591875627387)
,p_name=>'P10042_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16535243436627383)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16539259730627388)
,p_name=>'P10042_ROLE_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(16535243436627383)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\30ED\30FC\30EB')
,p_source=>'ROLE_IDS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(16421128635627028)
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30A2\30AF\30BB\30B9\5236\5FA1\304C\6709\52B9\306A\5834\5408\3001\7BA1\7406\8005\306F\3001\7279\5B9A\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\6A5F\80FD\3078\306E\30A2\30AF\30BB\30B9\3092\8A8D\8A3C\3055\308C\305F\30E6\30FC\30B6\30FC\306B\5236\9650\3067\304D\307E\3059\3002\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\3067\306F\3001\30EA\30FC\30C0\30FC\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\304A\3088\3073\7BA1\7406\8005\3068\3044\30463\3064\306E\30ED\30FC\30EB\304C\30B5\30DD\30FC\30C8\3055\308C\307E\3059\3002<p>'),
'<ul>',
unistr('  <li><strong>\30EA\30FC\30C0\30FC</strong>\306F\3001\3059\3079\3066\306E\60C5\5831\306B\5BFE\3059\308B\8AAD\53D6\308A\5C02\7528\30A2\30AF\30BB\30B9\6A29\3092\6301\3061\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF</strong>\306F\3001\60C5\5831\306E\4F5C\6210\3001\7DE8\96C6\304A\3088\3073\524A\9664\304C\53EF\80FD\3067\3001\30EC\30DD\30FC\30C8\3092\53C2\7167\3067\304D\307E\3059\3002</li>'),
unistr('  <li><strong>\7BA1\7406\8005</strong>\306F\3001\30B3\30F3\30C8\30EA\30D3\30E5\30FC\30BF\306E\6A5F\80FD\306B\52A0\3048\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\69CB\6210\3092\5B9F\884C\3067\304D\307E\3059\3002</li>'),
'</ul>'))
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16535769867627384)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\53D6\308A\6D88\3059')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16535580322627384)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16540812797627389)
,p_event_id=>wwv_flow_api.id(16535769867627384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16541261276627390)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>unistr('\884C\306E\30D5\30A7\30C3\30C1')
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16541705768627390)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>unistr('\4FDD\5B58')
,p_attribute_02=>'APEX_APPL_ACL_USERS'
,p_attribute_03=>'P10042_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16542073460627390)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\30DA\30FC\30B8\306E\30EA\30BB\30C3\30C8')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16535721285627384)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16542510747627391)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_api.create_page(
 p_id=>10043
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0 - \30B9\30C6\30C3\30D71')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.helpText {',
'padding: 8px;',
'color: #707070;',
'}'))
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444820296627120)
,p_dialog_chained=>'N'
,p_deep_linking=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16542945163627391)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16543039786627391)
,p_plug_name=>unistr('\30A6\30A3\30B6\30FC\30C9\30FB\30B3\30F3\30C6\30CA')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16543124009627391)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16542945163627391)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6B21')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16543241828627391)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16542945163627391)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16545854073627394)
,p_branch_name=>unistr('\6B21\306E\30B9\30C6\30C3\30D7\306B\9032\3080')
,p_branch_action=>'f?p=&APP_ID.:10044:&SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16543124009627391)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16546324016627395)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16543039786627391)
,p_item_default=>'2'
,p_prompt=>unistr('\30ED\30FC\30EB')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>wwv_flow_api.id(16421128635627028)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16546721206627395)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16543039786627391)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_placeholder=>unistr('\30E6\30FC\30B6\30FC\540D\3092\3053\3053\306B\5165\529B\3057\307E\3059')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(16421128635627028)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('\30AB\30F3\30DE\3001\30BB\30DF\30B3\30ED\30F3\307E\305F\306F\7A7A\767D\3067\533A\5207\3063\305F\30E6\30FC\30B6\30FC\540D\3092\5165\529B\3057\307E\3059\3002\65E2\5B58\307E\305F\306F\91CD\8907\3059\308B\30E6\30FC\30B6\30FC\540D\306F\81EA\52D5\7684\306B\7121\8996\3055\308C\307E\3059\3002')
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16547093196627396)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16543039786627391)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\540D\306E\5F62\5F0F')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_api.id(16547212021627396)||'.'
,p_field_template=>wwv_flow_api.id(16421128635627028)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16543298915627391)
,p_name=>unistr('\30E2\30FC\30C0\30EB\306E\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16543241828627391)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16548448731627399)
,p_event_id=>wwv_flow_api.id(16543298915627391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16549006436627400)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30B3\30EC\30AF\30B7\30E7\30F3\306E\4F5C\6210')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''ACL_BULK_USER_VALID'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := apex_string.split(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_username := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_username := trim(l_emails(j));',
'',
'        if l_username is not null then',
'            if NVL(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -----------',
'              -- Validate',
'              --',
'              l_at := instr(nvl(l_username,''x''),''@'');',
'              l_domain := substr(l_username,l_at+1);',
'              l_dot := instr(l_domain,''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            l_username := trim(l_username);',
'            l_username := trim(both ''.'' from l_username);',
'            l_username := replace(l_username,'' '',null);',
'            l_username := replace(l_username,chr(10),null);',
'            l_username := replace(l_username,chr(9),null);',
'            l_username := replace(l_username,chr(13),null);',
'            l_username := replace(l_username,chr(49824),null);',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => upper(l_username),',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where upper(user_name) = upper(l_username) and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001 = upper(l_username))',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => upper(l_username),',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => upper(l_username),',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16543124009627391)
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_api.create_page(
 p_id=>10044
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0 - \30B9\30C6\30C3\30D72')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uReportList {',
'    margin: 0;',
'    list-style: none;',
'}',
'.uReportList li {',
'    margin: 0 0 4px 0;',
'}',
'.check_icon {',
'    display: inline-block;',
'    width: 16px;',
'    height: 16px;',
'    line-height: 16px;',
'    background: #69B86B;',
'    color: #FFF;',
'    text-align: center;',
'    border-radius: 12px;',
'    font-size: 15px;',
'    border: 1px solid green;',
'    text-shadow: 0 -1px 0 rgba(0,0,0,.15);',
'    vertical-align: top;',
'    margin-right: 4px;',
'}',
'.valid_user {',
'    display: inline-block;',
'    padding: 4px 8px 4px 4px;',
'    border: 1px solid #D0D0D0;',
'    border-radius: 3px;',
'    line-height: 20px;',
'    background-color: #F8F8F8;',
'    color: #404040;',
'}'))
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444820296627120)
,p_deep_linking=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16543431932627391)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30D0\30FC')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16543509410627391)
,p_plug_name=>unistr('\8907\6570\30E6\30FC\30B6\30FC\306E\8FFD\52A0 - \30B9\30C6\30C3\30D72')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16543866807627391)
,p_name=>unistr('\4F8B\5916')
,p_parent_plug_id=>wwv_flow_api.id(16543509410627391)
,p_template=>wwv_flow_api.id(16361453659626970)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16550964969627407)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16551387884627408)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\7406\7531')
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16543952902627391)
,p_name=>unistr('&P10044_VALID_COUNT. \8FFD\52A0\3059\308B\30E6\30FC\30B6\30FC')
,p_parent_plug_id=>wwv_flow_api.id(16543509410627391)
,p_template=>wwv_flow_api.id(16347464281626954)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct lower(c001) username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(16388254384626993)
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\6709\52B9\306A\65B0\898F\30E6\30FC\30B6\30FC\304C\898B\3064\304B\308A\307E\305B\3093')
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16554533423627414)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\30E6\30FC\30B6\30FC\540D')
,p_column_html_expression=>'<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> #USERNAME#'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16544110276627391)
,p_plug_name=>unistr('\975E\8868\793A\306E\30A2\30A4\30C6\30E0')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16556067543627417)
,p_plug_name=>unistr('\6709\52B9\306A\30E6\30FC\30B6\30FC\304C\5B58\5728\3057\307E\3059 - \30DA\30FC\30B8\60C5\5831')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.prn(''<p>'');',
'sys.htp.prn(apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'', :P10044_VALID_COUNT, :P10044_ROLE));',
'sys.htp.prn(''</p>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16556815746627418)
,p_plug_name=>unistr('\6709\52B9\306A\30E6\30FC\30B6\30FC\304C\5B58\5728\3057\307E\305B\3093 - \30DA\30FC\30B8\60C5\5831')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>unistr('<p>\6709\52B9\306A\65B0\898F\30E6\30FC\30B6\30FC\304C\898B\3064\304B\308A\307E\305B\3093</p>')
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16544205738627391)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16543431932627391)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16557537838627419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16543431932627391)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421169097627029)
,p_button_image_alt=>unistr('\524D')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16543685898627391)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16543431932627391)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16558198666627420)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16544110276627391)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 access_level',
'from dual ',
'where 1 = 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16558567425627421)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16544110276627391)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16559001254627421)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16544110276627391)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16543821626627391)
,p_name=>unistr('\30E2\30FC\30C0\30EB\306E\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16543685898627391)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16559738286627422)
,p_event_id=>wwv_flow_api.id(16543821626627391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16560163605627423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30A2\30AF\30BB\30B9\5236\5FA1\30EA\30B9\30C8\3078\306E\30E6\30FC\30B6\30FC\306E\8FFD\52A0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' ) loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_INVALID'');',
'    apex_collection.DELETE_COLLECTION(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16544205738627391)
,p_process_success_message=>unistr('\30E6\30FC\30B6\30FC\304C\8FFD\52A0\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16560610888627423)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_api.create_page(
 p_id=>10050
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_patch=>wwv_flow_api.id(16444988891627120)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16560996116627423)
,p_plug_name=>unistr('\30D5\30A9\30FC\30E0\30FB\30A2\30A4\30C6\30E0\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16561056907627423)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16561216128627423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16561056907627423)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\9001\4FE1')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16561322732627423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16561056907627423)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16569961309627431)
,p_branch_name=>unistr('\6210\529F')
,p_branch_action=>'f?p=&APP_ID.:10051:&SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16564833433627426)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16560996116627423)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16565209864627427)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16560996116627423)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16565581311627427)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16560996116627423)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16565964414627428)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(16560996116627423)
,p_prompt=>unistr('\30A8\30AF\30B9\30DA\30EA\30A8\30F3\30B9')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_api.id(16566123097627428)||'.'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
,p_attribute_03=>'Y'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16567911667627429)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16560996116627423)
,p_prompt=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16569623944627431)
,p_validation_name=>unistr('\5C11\306A\304F\3068\30821\3064\306E\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\5FC5\8981\3067\3059')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\307E\305F\306F\30A8\30AF\30B9\30DA\30EA\30A8\30F3\30B9\3092\63D0\4F9B\3057\3066\304F\3060\3055\3044\3002')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16561396626627423)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\53D6\308A\6D88\3059')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16561322732627423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16568714907627429)
,p_event_id=>wwv_flow_api.id(16561396626627423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16569206714627430)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\9001\4FE1')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'apex_util.submit_feedback (',
'    p_comment              => :P10050_FEEDBACK,',
'    p_application_id       => :APP_ID,',
'    p_page_id              => :P10050_PAGE_ID,',
'    p_rating               => :P10050_RATING',
'',
' );',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16561216128627423)
,p_process_success_message=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\767A\884C\3055\308C\307E\3057\305F')
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_api.create_page(
 p_id=>10051
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\767A\884C\3055\308C\307E\3057\305F')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_required_patch=>wwv_flow_api.id(16444988891627120)
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16561605643627423)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\304C\767A\884C\3055\308C\307E\3057\305F')
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16343804811626948)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16561481603627423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16561605643627423)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\9589\3058\308B')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_css_classes=>'w40p'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16561714118627423)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16561481603627423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16571682525627434)
,p_event_id=>wwv_flow_api.id(16561714118627423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_api.create_page(
 p_id=>10053
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444988891627120)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\30A8\30F3\30C9\30FB\30E6\30FC\30B6\30FC\306F\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\5185\306E\901A\5E38\306E\30DA\30FC\30B8\304B\3089\30D5\30A3\30FC\30C9\30D0\30C3\30AF\3092\5165\529B\3067\304D\307E\3059\3002</p>'),
unistr('<p>\3053\306E\30EC\30DD\30FC\30C8\306B\306F\3001\5165\529B\3055\308C\305F\30D5\30A3\30FC\30C9\30D0\30C3\30AF\3001\7BA1\7406\8005\306B\3088\308A\5165\529B\3055\308C\305F\30EC\30B9\30DD\30F3\30B9\3001\304A\3088\3073\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\30B9\30C6\30FC\30BF\30B9\304C\8868\793A\3055\308C\307E\3059\3002</p>'),
unistr('<p>\7DE8\96C6\30A2\30A4\30B3\30F3(\9EC4\8272\306E\925B\7B46)\3092\30AF\30EA\30C3\30AF\3057\3066\30EC\30B9\30DD\30F3\30B9\3092\5165\529B\3059\308B\304B\3001\30D5\30A3\30FC\30C9\30D0\30C3\30AF\30FB\30B9\30C6\30FC\30BF\30B9\3092\66F4\65B0\3057\307E\3059\3002</p>'),
unistr('<p><em><strong>\6CE8\610F:</strong> \30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\53D7\4FE1\8005\304C\5B9A\7FA9\3055\308C\3066\3044\308B\5834\5408\3001\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306F\3001\30D5\30A3\30FC\30C9\30D0\30C3\30AF\53D7\4FE1\8005\30EA\30B9\30C8\306E\96FB\5B50\30E1\30FC\30EB\30FB\30A2\30C9\30EC\30B9\306B\3082\9001\4FE1\3055\308C\307E\3059\3002</em></p>')))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134754'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16563048268627423)
,p_plug_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(16367934999626975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'',
'',
'',
'',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16582905314627445)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF\306E\7BA1\7406')
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('\3053\306E\30EC\30DD\30FC\30C8\306E\6700\5927\884C\6570\306F#MAX_ROW_COUNT#\884C\3067\3059\3002\30D5\30A3\30EB\30BF\3092\9069\7528\3057\3066\3001\554F\5408\305B\306E\30EC\30B3\30FC\30C9\6570\3092\524A\6E1B\3057\3066\304F\3060\3055\3044\3002')
,p_no_data_found_message=>unistr('\30C7\30FC\30BF\304C\898B\3064\304B\308A\307E\305B\3093\3002')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::::P10054_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'ADMIN'
,p_internal_uid=>2935757589034502
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16583031258627451)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16583290328627452)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>unistr('\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30DA\30FC\30B8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16583705927627454)
,p_db_column_name=>'CREATED'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>unistr('\30D5\30A1\30A4\30EB\6E08')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16584128053627455)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>unistr('\30D5\30A1\30A4\30E9')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16584449855627456)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16584896087627457)
,p_db_column_name=>'RATING'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>unistr('\8A55\4FA1')
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(16566123097627428)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16585346564627458)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>55
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16585702644627460)
,p_db_column_name=>'STATUS'
,p_display_order=>61
,p_column_identifier=>'H'
,p_column_label=>unistr('\30B9\30C6\30FC\30BF\30B9')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(16576471296627438)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16586122797627463)
,p_db_column_name=>'RESPONSE'
,p_display_order=>71
,p_column_identifier=>'I'
,p_column_label=>unistr('\30EC\30B9\30DD\30F3\30B9')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16586481087627464)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>unistr('\30E6\30FC\30B6\30FC\30FB\30A8\30FC\30B8\30A7\30F3\30C8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16586876071627465)
,p_db_column_name=>'UPDATED'
,p_display_order=>91
,p_column_identifier=>'K'
,p_column_label=>unistr('\66F4\65B0')
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16587315636627466)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>unistr('\66F4\65B0\8005')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16587711167627468)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>unistr('\30DA\30FC\30B8')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16588394329627469)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'29413'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16589293802627470)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16563048268627423)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16421367434627030)
,p_button_image_alt=>unistr('\30EA\30BB\30C3\30C8')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16562948228627423)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\306E\30AF\30ED\30FC\30BA\6642\306B\30EA\30D5\30EC\30C3\30B7\30E5')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16563048268627423)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16590612151627474)
,p_event_id=>wwv_flow_api.id(16562948228627423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16563048268627423)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_api.create_page(
 p_id=>10054
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: #4caf50; }',
'.feedback-neutral { color: #eb9f41; }',
'.feedback-negative { color: #f44336; }'))
,p_required_role=>wwv_flow_api.id(16447449612627126)
,p_required_patch=>wwv_flow_api.id(16444988891627120)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16562442009627423)
,p_plug_name=>unistr('\30D5\30A9\30FC\30E0\30FB\30A2\30A4\30C6\30E0\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16562545035627423)
,p_plug_name=>unistr('\30DC\30BF\30F3\30FB\30EA\30FC\30B8\30E7\30F3')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16359448941626967)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16562611868627423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16562545035627423)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5909\66F4\306E\9069\7528')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16562712992627423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16562545035627423)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16562807764627423)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16562545035627423)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(16421301161627030)
,p_button_image_alt=>unistr('\524A\9664')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16574028989627436)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16574424593627436)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_prompt=>unistr('\30DA\30FC\30B8')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16574795016627436)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_prompt=>unistr('\30D5\30A1\30A4\30EB\6E08')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16575191498627437)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_prompt=>unistr('\8A55\4FA1')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16575584509627437)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_prompt=>unistr('\30D5\30A3\30FC\30C9\30D0\30C3\30AF')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16575975805627438)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_prompt=>unistr('\30EC\30B9\30DD\30F3\30B9')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16576397830627438)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_prompt=>unistr('\30B9\30C6\30FC\30BF\30B9')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_api.id(16576471296627438)||'.'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16578742798627440)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(16562442009627423)
,p_prompt=>unistr('\30E6\30FC\30B6\30FC\30FB\30A8\30FC\30B8\30A7\30F3\30C8')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16420751655627027)
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16562863052627423)
,p_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\53D6\308A\6D88\3059')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16562712992627423)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16579520887627441)
,p_event_id=>wwv_flow_api.id(16562863052627423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16580028810627441)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\30C7\30FC\30BF\306E\30ED\30FC\30C9')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
unistr('                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="\60AA\3044"></span>'' '),
unistr('                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="\3069\3061\3089\3068\3082\3044\3048\306A\3044"></span>''  '),
unistr('                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="\826F\3044"></span>'' '),
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID',
') loop',
'   :P10054_PAGE_ID := c1.page_id||''. ''||c1.page_name;',
'   :P10054_FILED := c1.filed;',
'   :P10054_RATING_ICON := c1.rating_icon;',
'   :P10054_FEEDBACK := c1.feedback;',
'   :P10054_RESPONSE := c1.public_response;',
'   :P10054_FEEDBACK_STATUS := c1.feedback_status;',
'   :P10054_USER_AGENT := c1.http_user_agent;',
'end loop;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16580365661627442)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\66F4\65B0')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.reply_to_feedback (',
'    p_feedback_id        => :P10054_ID,',
'    p_status             => :P10054_FEEDBACK_STATUS,',
'    p_public_response    => :P10054_RESPONSE );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16562611868627423)
,p_process_success_message=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16580790078627442)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\524A\9664')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.delete_feedback (',
'    p_feedback_id        => :P10054_ID );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16562807764627423)
,p_process_success_message=>unistr('\30A2\30AF\30B7\30E7\30F3\304C\51E6\7406\3055\308C\307E\3057\305F\3002')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16581228544627444)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'E.PROPERTY.BUTTON_ACTION.LOV.RESET.D'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16562807764627423)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16581589548627444)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\30C0\30A4\30A2\30ED\30B0\3092\9589\3058\308B')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_api.create_page(
 p_id=>10060
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\60C5\5831')
,p_alias=>'HELP'
,p_step_title=>unistr('\60C5\5831')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(16449439864627134)
,p_required_patch=>wwv_flow_api.id(16445519419627120)
,p_help_text=>unistr('\3053\306E\30DA\30FC\30B8\304B\3089\3059\3079\3066\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\30FB\30D8\30EB\30D7\30FB\30C6\30AD\30B9\30C8\306B\30A2\30AF\30BB\30B9\3067\304D\307E\3059\3002\300C\30C9\30AD\30E5\30E1\30F3\30C8\300D\30EA\30FC\30B8\30E7\30F3\306E\30EA\30F3\30AF\3092\4F7F\7528\3059\308B\3068\3001\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306E\6A5F\80FD\3068\7279\5FB4\306E\3088\308A\8A73\7D30\306A\8AAC\660E\3092\53C2\7167\3067\304D\307E\3059\3002')
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134754'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16591594138627476)
,p_plug_name=>unistr('\60C5\5831\30DA\30FC\30B8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16366068260626974)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>unistr('\3053\306E\30A2\30D7\30EA\30B1\30FC\30B7\30E7\30F3\306B\95A2\3059\308B\30C6\30AD\30B9\30C8\306F\3001\3053\3053\306B\914D\7F6E\3067\304D\307E\3059\3002')
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_api.create_page(
 p_id=>10061
,p_user_interface_id=>wwv_flow_api.id(16443158785627075)
,p_name=>unistr('\30D8\30EB\30D7')
,p_alias=>'PAGE_HELP'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\30D8\30EB\30D7')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(16445519419627120)
,p_dialog_chained=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181129134754'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16592384252627476)
,p_plug_name=>unistr('\691C\7D22\30C0\30A4\30A2\30ED\30B0\30FB\30DC\30C3\30AF\30B9')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16347464281626954)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P10061_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
unistr('        sys.htp.p(''\3053\306E\30DA\30FC\30B8\3067\4F7F\7528\53EF\80FD\306A\30D8\30EB\30D7\306F\3042\308A\307E\305B\3093\3002'');'),
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16592795128627477)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16592384252627476)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(16885022019660955)
);
end;
/
prompt --application/deployment/install/install_ja_lexer
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16885152588662640)
,p_install_id=>wwv_flow_api.id(16885022019660955)
,p_name=>'ja_lexer'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  ctx_ddl.create_preference(''ja_lexer'', ''JAPANESE_LEXER'');',
'end;',
'/'))
);
end;
/
prompt --application/deployment/install/install_tcw_schema
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(7887195761487447)
,p_install_id=>wwv_flow_api.id(16885022019660955)
,p_name=>'tcw_schema'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE SEQUENCE  "TCW_DOC_REMARKS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 122 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
'CREATE SEQUENCE  "TCW_FOLLOWERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 204 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
'CREATE SEQUENCE  "TCW_USER_PREFERENCES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
'CREATE SEQUENCE  "TCW_DOCUMENTS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 25405 NOCACHE  NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
'CREATE SEQUENCE  "TCW_LINK_TYPES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  GLOBAL ;',
'',
'CREATE TABLE "TCW_DOCUMENTS" ',
'   (	"LINK_NUM" NUMBER, ',
'	"REG_DATE" DATE NOT NULL ENABLE, ',
'	"UPD_DATE" DATE NOT NULL ENABLE, ',
'	"OPL_CODE" NUMBER NOT NULL ENABLE, ',
'	"OBJ_NAME" VARCHAR2(250) NOT NULL ENABLE, ',
'	"OBJ_VERSION" VARCHAR2(250) NOT NULL ENABLE, ',
'	"LINK_URL" VARCHAR2(250), ',
'	"ANNOUNCE_FLAG" NUMBER, ',
'	"IN_CONSULTING" NUMBER GENERATED ALWAYS AS (CASE "OPL_CODE" WHEN 5 THEN 1 ELSE 0 END) VIRTUAL , ',
'	"UPD_USERNAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"REG_USERNAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"ABSTRACT" VARCHAR2(4000), ',
'	 CONSTRAINT "TCW_DOCUMENTS_PK" PRIMARY KEY ("LINK_NUM")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_ACLS" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"USER_NAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_REMARKS" ',
'   (	"TCW_REMARK_ID" NUMBER NOT NULL ENABLE, ',
'	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"REMARK_TEXT" VARCHAR2(4000), ',
'	"AUTHOR" VARCHAR2(80), ',
'	"DATE_OF_REMARK" TIMESTAMP (6) NOT NULL ENABLE, ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"IS_CLOSED" VARCHAR2(1) DEFAULT ''N'' NOT NULL ENABLE, ',
'	"DATE_CLOSED" TIMESTAMP (6) WITH TIME ZONE, ',
'	 CONSTRAINT "TCW_DOC_REMARKS_PK" PRIMARY KEY ("TCW_REMARK_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_HASHTAGS" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"HASHTAG" VARCHAR2(300) NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_LINK_TYPES" ',
'   (	"LINK_TYPE_ID" NUMBER NOT NULL ENABLE, ',
'	"LINK_TYPE_NAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"DESCRIPTION" VARCHAR2(400), ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LINK_ICON" VARCHAR2(40), ',
'	 CONSTRAINT "TCW_LINK_TYPES_PK" PRIMARY KEY ("LINK_TYPE_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_LINKS" ',
'   (	"DOC_ID" NUMBER NOT NULL ENABLE, ',
'	"LINK_TYPE" NUMBER NOT NULL ENABLE, ',
'	"LINK_URL" VARCHAR2(250) NOT NULL ENABLE, ',
'	"NOTE" VARCHAR2(400), ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_NOTIFICATIONS" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"NOTIFY_UPDATE" VARCHAR2(1)',
'   ) ;',
'',
'CREATE TABLE "TCW_CONSUL_USER" ',
'   (	"U_EMAIL" VARCHAR2(80) NOT NULL ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_ARCHIVES" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"OBJ_VERSION" VARCHAR2(250) NOT NULL ENABLE, ',
'	"OBJ_NAME" VARCHAR2(250) NOT NULL ENABLE, ',
'	"OPL_CODE" NUMBER, ',
'	"FILE_NAME" VARCHAR2(250), ',
'	"CONTENT_TYPE" VARCHAR2(100), ',
'	"LINK_OBJECT" BLOB, ',
'	"CREATED_BY" VARCHAR2(160) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"OWNER" VARCHAR2(160), ',
'	 CONSTRAINT "TCW_DOC_ARCHIVES_PK" PRIMARY KEY ("LINK_NUM", "OBJ_VERSION")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_QUERY_HISTORY" ',
'   (	"QUERY_TERM" VARCHAR2(4000) NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(200) NOT NULL ENABLE, ',
'	"DATE_QUERY" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"QUERY_TYPE" VARCHAR2(1), ',
'	"TERM_POSITION" NUMBER',
'   ) ;',
'',
'CREATE TABLE "TCW_USER_NAMES" ',
'   (	"USER_NAME" VARCHAR2(80) NOT NULL ENABLE, ',
'	"FIRST_NAME" VARCHAR2(80), ',
'	"LAST_NAME" VARCHAR2(80), ',
'	 CONSTRAINT "TCW_USER_NAMES_PK" PRIMARY KEY ("USER_NAME")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_CONTENT_TYPES" ',
'   (	"CONTENT_TYPE" VARCHAR2(200) NOT NULL ENABLE, ',
'	"CONTENT_TYPE_ALIAS" VARCHAR2(40), ',
'	"DESCRIPTION" VARCHAR2(200), ',
'	"CREATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"CREATION_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80) NOT NULL ENABLE, ',
'	"LAST_UPDATE_DATE" TIMESTAMP (6) WITH TIME ZONE NOT NULL ENABLE, ',
'	 CONSTRAINT "TCW_CONTENT_TYPES_PK" PRIMARY KEY ("CONTENT_TYPE")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOC_DATA" ',
'   (	"LINK_NUM" NUMBER, ',
'	"FILE_NAME" VARCHAR2(250), ',
'	"CONTENT_TYPE" VARCHAR2(100), ',
'	"LINK_OBJECT" BLOB, ',
'	 CONSTRAINT "TCW_DOC_DATA_PK" PRIMARY KEY ("LINK_NUM")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_DOWNLOAD_HISTORY" ',
'   (	"LINK_NUM" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(80), ',
'	"DATE_DOWNLOAD" TIMESTAMP (6) WITH LOCAL TIME ZONE NOT NULL ENABLE, ',
'	"LAST_UPDATED_BY" VARCHAR2(80)',
'   ) ;',
'',
'CREATE TABLE "TCW_FOLLOWERS" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"USERNAME" VARCHAR2(250) NOT NULL ENABLE, ',
'	"FOLLOWER" VARCHAR2(250) NOT NULL ENABLE, ',
'	 CONSTRAINT "TCW_FOLLOWERS_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'CREATE TABLE "TCW_USER_PREFERENCES" ',
'   (	"USER_NAME" VARCHAR2(80), ',
'	"PREFERENCE_NAME" VARCHAR2(80), ',
'	"PREFERENCE_VALUE" VARCHAR2(80), ',
'	"ID" NUMBER NOT NULL ENABLE, ',
'	 CONSTRAINT "TCW_USER_PREFERENCES_PK" PRIMARY KEY ("ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'ALTER TABLE "TCW_DOC_ACLS" ADD CONSTRAINT "TCW_DOC_ACLS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'ALTER TABLE "TCW_DOC_REMARKS" ADD CONSTRAINT "TCW_DOC_REMARKS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'ALTER TABLE "TCW_HASHTAGS" ADD CONSTRAINT "TCW_HASHTAGS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ON DELETE CASCADE ENABLE;',
'',
'ALTER TABLE "TCW_DOC_LINKS" ADD CONSTRAINT "TCW_DOC_LINKS_FK" FOREIGN KEY ("DOC_ID")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'ALTER TABLE "TCW_DOC_LINKS" ADD CONSTRAINT "TCW_DOC_LINKS_FK2" FOREIGN KEY ("LINK_TYPE")',
'	  REFERENCES "TCW_LINK_TYPES" ("LINK_TYPE_ID") ENABLE;',
'',
'ALTER TABLE "TCW_DOC_NOTIFICATIONS" ADD CONSTRAINT "TCW_DOC_NOTIFICATIONS_FK" FOREIGN KEY ("LINK_NUM")',
'	  REFERENCES "TCW_DOCUMENTS" ("LINK_NUM") ENABLE;',
'',
'CREATE INDEX "TCW_DOCUMENTS_N1" ON "TCW_DOCUMENTS" ("REG_USERNAME") ',
'  ;',
'',
'CREATE INDEX "TCW_DOCUMENTS_N2" ON "TCW_DOCUMENTS" ("UPD_USERNAME") ',
'  ;',
'',
'CREATE UNIQUE INDEX "TCW_HASHTAGS_U1" ON "TCW_HASHTAGS" ("LINK_NUM", UPPER("HASHTAG")) ',
'  ;',
'',
'CREATE INDEX "TCW_SEARCH_ABSTRACT" ON "TCW_DOCUMENTS" ("ABSTRACT") ',
'   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS (''lexer ja_lexer sync (on commit)'');',
'',
'CREATE INDEX "TCW_SEARCH_DB_DOC" ON "TCW_DOC_DATA" ("LINK_OBJECT") ',
'   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS (''lexer ja_lexer sync (on commit)'');',
'',
'CREATE INDEX "TCW_SEARCH_TITLE" ON "TCW_DOCUMENTS" ("OBJ_NAME") ',
'   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS (''lexer ja_lexer sync (on commit)'');',
'',
'CREATE OR REPLACE TRIGGER "TCW_CONTENT_TYPES_TI" ',
'BEFORE ',
'insert on "TCW_CONTENT_TYPES" ',
'for each row ',
'begin ',
':new.created_by := v(''APP_USER''); ',
':new.creation_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_CONTENT_TYPES_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_CONTENT_TYPES_TU" ',
'BEFORE ',
'insert or update on "TCW_CONTENT_TYPES" ',
'for each row ',
'begin ',
':new.last_updated_by := v(''APP_USER''); ',
':new.last_update_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_CONTENT_TYPES_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_ACLS_TI" ',
'BEFORE',
'insert on "TCW_DOC_ACLS"',
'for each row',
'begin',
':new.created_by := v(''APP_USER'');',
':new.creation_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_ACLS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_ACLS_TU" ',
'BEFORE',
'insert or update on "TCW_DOC_ACLS"',
'for each row',
'begin',
':new.last_updated_by := v(''APP_USER'');',
':new.last_update_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_ACLS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_ARCHIVES_TI" ',
'BEFORE',
'insert on "TCW_DOC_ARCHIVES"',
'for each row',
'begin',
':new.created_by    := v(''APP_USER'');',
':new.creation_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_ARCHIVES_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_LINKS_TI" ',
'BEFORE',
'insert on "TCW_DOC_LINKS"',
'for each row',
'begin',
':new.created_by := v(''APP_USER'');',
':new.creation_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_LINKS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_LINKS_TU" ',
'BEFORE',
'insert or update on "TCW_DOC_LINKS"',
'for each row',
'begin',
':new.last_updated_by := v(''APP_USER'');',
':new.last_update_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_LINKS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_NOTIFICATIONS_TU" ',
'BEFORE ',
'insert or update on "TCW_DOC_NOTIFICATIONS" ',
'for each row ',
'begin ',
':new.last_update_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_NOTIFICATIONS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_REMARKS_TI" ',
'  before insert on "TCW_DOC_REMARKS"               ',
'  for each row  ',
'begin   ',
'  if :NEW."TCW_REMARK_ID" is null then ',
'    select "TCW_DOC_REMARKS_SEQ".nextval into :NEW."TCW_REMARK_ID" from sys.dual; ',
'    :new.created_by := v(''APP_USER'');',
'    :new.creation_date := systimestamp;',
'  end if; ',
'end; ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_REMARKS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_DOC_REMARKS_TU" ',
'BEFORE',
'insert or update on "TCW_DOC_REMARKS"',
'for each row',
'begin',
':new.last_updated_by := v(''APP_USER'');',
':new.last_update_date := systimestamp;',
'end;',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_DOC_REMARKS_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_FOLLOWERS_TI" ',
'  before insert on "TCW_FOLLOWERS"                ',
'  for each row   ',
'begin    ',
'  if :NEW."ID" is null then  ',
'    select "TCW_FOLLOWERS_SEQ".nextval into :NEW."ID" from sys.dual;  ',
'  end if;  ',
'end;  ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_FOLLOWERS_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_LINK_TYPES_TI" ',
'BEFORE ',
'insert on "TCW_LINK_TYPES" ',
'for each row ',
'begin',
'  if :NEW."LINK_TYPE_ID" is null then ',
'    select "TCW_LINK_TYPES_SEQ".nextval into :NEW."LINK_TYPE_ID" from sys.dual; ',
'    :new.created_by := v(''APP_USER'');',
'    :new.creation_date := systimestamp;  end if;',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_LINK_TYPES_TI" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_LINK_TYPES_TU" ',
'BEFORE ',
'insert or update on "TCW_LINK_TYPES" ',
'for each row ',
'begin ',
':new.last_updated_by := v(''APP_USER''); ',
':new.last_update_date := systimestamp; ',
'end; ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_LINK_TYPES_TU" ENABLE;',
'',
'CREATE OR REPLACE TRIGGER "TCW_USER_PREFERENCES_TI" ',
'  before insert on "TCW_USER_PREFERENCES"                ',
'  for each row   ',
'begin    ',
'  if :NEW."ID" is null then  ',
'    select "TCW_USER_PREFERENCES_SEQ".nextval into :NEW."ID" from sys.dual;  ',
'  end if;  ',
'end;  ',
' ',
'',
'/',
'',
'',
'ALTER TRIGGER "TCW_USER_PREFERENCES_TI" ENABLE;',
'',
'CREATE OR REPLACE PACKAGE "TCW_UTIL" as ',
' ',
'function current_user_in_group ( ',
'   p_group_name in varchar2) ',
'return boolean; ',
' ',
'procedure log_download_history ( ',
'  p_link_num in number, ',
'  p_username in varchar2, ',
'  p_timestamp in timestamp with local time zone); ',
' ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2); ',
'   ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2, ',
'  p_term_position in number); ',
' ',
'procedure log_query_history ( ',
'  p_query_terms in APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2); ',
' ',
'function extract_hashtags ( ',
'  p_string in varchar2) ',
'return APEX_APPLICATION_GLOBAL.VC_ARR2; ',
' ',
'procedure extract_search_items ( ',
'  p_string in varchar2, ',
'  p_item_hashtags out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_owners   out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_words    out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_hashtag in varchar2 default ''#''); ',
' ',
'procedure save_hashtags ( ',
'  p_link_num  in number, ',
'  p_string    in varchar2); ',
' ',
'function get_name_part ( ',
'  p_email     in varchar2, ',
'  p_prefix    in varchar2 default null ',
'  ) return varchar2; ',
' ',
'procedure send( ',
'    p_from in varchar2, ',
'    p_body in varchar2, ',
'    p_subj in varchar2); ',
'     ',
'-- search helper ',
'procedure initialize_search_items; ',
' ',
'procedure remove_search_items( ',
'  p_search_items in varchar2); ',
' ',
'procedure add_search_items( ',
'  p_search_items in varchar2, ',
'  p_username     in varchar2 default null); ',
' ',
'function get_contains return varchar2; ',
' ',
'procedure set_preference( ',
'  p_preference_name  in varchar2, ',
'  p_preference_value in varchar2, ',
'  p_user_name in varchar2 default v(''APP_USER'')); ',
' ',
'function get_preference( ',
'   p_preference_name in varchar2, ',
'   p_user_name       in varchar2 default v(''APP_USER'') ',
') return varchar2;',
'procedure notify_update(p_doc_id number, ',
'                 p_template in varchar2 default ''TCWEBEMAILUPDATE'', ',
'                 p_user     in varchar2 default v(''APP_USER'')); ',
'end;',
'/',
'',
'',
'CREATE OR REPLACE PACKAGE BODY "TCW_UTIL" is ',
'function CURRENT_USER_IN_GROUP(       P_GROUP_NAME IN VARCHAR2 ',
') return BOOLEAN ',
' ',
'as ',
'begin ',
'  -- check current user in the group. ',
'  if apex_util.current_user_in_group(p_group_name => p_group_name) then ',
'    return true; ',
'  end if; ',
'  -- check current user in the group of grantee. ',
'  -- only 1 level up is evaluated at this moment. (lazy? yes, but want to avoid loop of grantee group) ',
'  for g in (select group_name from apex_workspace_group_groups where grantee_name = p_group_name) ',
'  loop ',
'    if apex_util.current_user_in_group(p_group_name => g.group_name) then ',
'      return true; ',
'    end if; ',
'  end loop; ',
'  return false; ',
'end CURRENT_USER_IN_GROUP; ',
' ',
'procedure log_download_history ( ',
'  p_link_num  in number, ',
'  p_username  in varchar2, ',
'  p_timestamp in timestamp with local time zone) ',
'as ',
'  l_c number; ',
'  l_doc_owner tcw_documents.upd_username%type; ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  -- avoid duplicate download within 1 hour. ',
'  select count(*) into l_c from tcw_download_history ',
'  where link_num = p_link_num and username = p_username  ',
'  and date_download between systimestamp - interval ''1'' hour and systimestamp; ',
'  if l_c = 0 then ',
'    -- do not log if referer is a document owner ',
'    select upd_username into l_doc_owner from tcw_documents where link_num = p_link_num; ',
'    if l_doc_owner <> p_username then ',
'      insert into tcw_download_history(link_num, username, date_download, last_updated_by) ',
'      values(p_link_num, p_username, p_timestamp, l_doc_owner); ',
'    end if; ',
'  end if; ',
'  commit; ',
'end; ',
' ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2) ',
'as ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  insert into tcw_query_history(query_term, username, date_query, query_type) ',
'      values(p_query_term, p_username, p_timestamp, p_query_type); ',
'  commit; ',
'end; ',
' ',
'procedure log_query_history ( ',
'  p_query_term in varchar2, ',
'  p_username   in varchar2, ',
'  p_timestamp  in timestamp with local time zone, ',
'  p_query_type in varchar2, ',
'  p_term_position in number) ',
'as ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  insert into tcw_query_history(query_term, username, date_query, query_type, term_position) ',
'      values(p_query_term, p_username, p_timestamp, p_query_type, p_term_position); ',
'  commit; ',
'end; ',
' ',
'procedure log_query_history ( ',
'  p_query_terms   in APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_username      in varchar2, ',
'  p_timestamp     in timestamp with local time zone, ',
'  p_query_type    in varchar2) ',
'as ',
'  PRAGMA AUTONOMOUS_TRANSACTION; ',
'begin ',
'  for i in 1..p_query_terms.count ',
'  loop ',
'    insert into tcw_query_history(query_term, username, date_query, query_type, term_position) ',
'        values(p_query_terms(i), p_username, p_timestamp, p_query_type, i); ',
'  end loop; ',
'  commit; ',
'end; ',
'function extract_hashtags ( ',
'  p_string in varchar2) ',
'return APEX_APPLICATION_GLOBAL.VC_ARR2 ',
'as ',
'  l_hash_loc number; ',
'  l_hashtag  varchar2(1000); ',
'  l_tagcount number := 0; ',
'  l_string  varchar2(4000); ',
'  l_vc_hashtags APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'begin ',
'  if p_string is null then ',
'    return l_vc_hashtags; -- returns empty array ',
'  end if; ',
'  l_tagcount := 0; ',
'  l_string   := p_string; ',
'  while true loop ',
'    l_hash_loc := instr(l_string, ''#''); ',
'    exit when l_hash_loc = 0; -- No hash char exist, exit ',
'    if l_hash_loc > 1 then',
'      if not regexp_like(substr(l_string, l_hash_loc - 1, 1),''\s'') then',
'        l_string := substr(l_string, l_hash_loc+1);',
'        continue;',
'      end if;',
'    end if;',
'    l_string := substr(l_string, l_hash_loc+1); ',
'    l_hashtag := regexp_substr(l_string, ''^\w+''); ',
'    if l_hashtag is null or length(l_hashtag) > 80 then',
'       -- ignore if too short or too long',
'       continue; ',
'    elsif regexp_like(l_hashtag, ''^\d+$'') then',
'       -- ignore if only numbers',
'       continue;',
'    end if; ',
'    l_tagcount := l_tagcount + 1; ',
'    l_vc_hashtags(l_tagcount) := l_hashtag; ',
'  end loop; ',
'  return l_vc_hashtags; ',
'end; ',
'  ',
'procedure extract_search_items (  ',
'  p_string in varchar2, ',
'  p_item_hashtags out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_owners   out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_item_words    out APEX_APPLICATION_GLOBAL.VC_ARR2, ',
'  p_hashtag in varchar2 default ''#'' ',
')  ',
'as ',
'  l_hash_loc  number := 0; ',
'  l_owner_loc number := 0; ',
'  l_word_loc  number := 0; ',
'  l_hash_cnt  number := 0; ',
'  l_owner_cnt number := 0; ',
'  l_word_cnt  number := 0; ',
'  l_loc       number; ',
'  l_item      varchar2(1000); ',
'  l_item_len  number; ',
'  l_string    varchar2(4000); ',
'  REGEXP_HASHTAG constant varchar2(16) := p_hashtag || ''[[:alnum:]_]+''; ',
'  REGEXP_OWNER   constant varchar2(16) := ''@[A-Za-z0-9\.]+''; ',
'  REGEXP_WORD    constant varchar2(16) := ''[[:alnum:]]+''; ',
'begin ',
'  if p_string is null then ',
'    return; ',
'  end if; ',
'  l_string := replace(p_string, unistr(''\3000''),'' '');',
'  while true loop ',
'    l_hash_loc  := regexp_instr(l_string, REGEXP_HASHTAG); ',
'    l_owner_loc := regexp_instr(l_string, REGEXP_OWNER); ',
'    l_word_loc  := regexp_instr(l_string, REGEXP_WORD); ',
'    -- dbms_output.put_line(''H:'' || l_hash_loc || ''O:'' || l_owner_loc || ''W:'' || l_word_loc); ',
'    if l_hash_loc > 0 ',
'      and (l_owner_loc = 0 or l_hash_loc < l_owner_loc) ',
'      and (l_word_loc  = 0 or l_hash_loc < l_word_loc) then ',
'      -- hashtag appeard first. ',
'      l_hash_cnt := l_hash_cnt + 1; ',
'      l_item := regexp_substr(l_string, REGEXP_HASHTAG); ',
'      -- strip first # char. ',
'      l_loc := l_hash_loc; ',
'      l_item_len := length(l_item); ',
'      p_item_hashtags(l_hash_cnt) := substr(l_item,2); ',
'    elsif l_owner_loc > 0 ',
'      and (l_hash_loc = 0 or l_owner_loc < l_hash_loc) ',
'      and (l_word_loc = 0 or l_owner_loc < l_word_loc) then ',
'      -- owner appeard first. ',
'      l_owner_cnt := l_owner_cnt + 1; ',
'      l_item := regexp_substr(l_string, REGEXP_OWNER); ',
'      -- strip first @ char. ',
'      l_loc := l_owner_loc; ',
'      l_item_len := length(l_item); ',
'      p_item_owners(l_owner_cnt) := substr(l_item,2); ',
'    elsif l_word_loc > 0 ',
'      and (l_hash_loc  = 0 or l_word_loc < l_hash_loc) ',
'      and (l_owner_loc = 0 or l_word_loc < l_owner_loc) then ',
'      -- word appeard first. ',
'      l_word_cnt := l_word_cnt + 1; ',
'      l_item := regexp_substr(l_string, REGEXP_WORD); ',
'      -- nothing is striped from word. ',
'      l_loc := l_word_loc; ',
'      l_item_len := length(l_item); ',
'      p_item_words(l_word_cnt) := l_item; ',
'    else ',
'      exit; ',
'    end if; ',
'    l_string := substr(l_string, l_loc + l_item_len); ',
'    -- dbms_output.put_line(l_item || '' ''|| l_loc || '' ''|| l_string); ',
'  end loop; ',
'end; ',
' ',
'procedure save_hashtags ( ',
'  p_link_num in number, ',
'  p_string   in varchar2) ',
'as ',
'  l_vc_hashtags APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'begin ',
'  -- cleanup the entry. ',
'  delete from tcw_hashtags where link_num = p_link_num; ',
'  l_vc_hashtags := tcw_util.extract_hashtags(p_string); ',
'  for i in 1..l_vc_hashtags.count loop ',
'     begin',
'       insert into tcw_hashtags(link_num, hashtag) ',
'       values(p_link_num, l_vc_hashtags(i));',
'     exception',
'       when dup_val_on_index then',
'         null;',
'     end;',
'  end loop; ',
'end; ',
' ',
'function get_name_part ( ',
'  p_email in varchar2, ',
'  p_prefix in varchar2 default null ',
') return varchar2 ',
'as ',
'  l_name_part varchar2(4000); ',
'begin ',
'  l_name_part := regexp_replace(p_email, ''(.*)@ORACLE.COM'',''\1''); ',
'  if p_prefix is not null then ',
'    l_name_part := p_prefix || l_name_part; ',
'  end if; ',
'  return l_name_part; ',
'end; ',
' ',
'procedure send( ',
'    p_from in varchar2, ',
'    p_body in varchar2, ',
'    p_subj in varchar2) ',
'as ',
'begin ',
'  -- stub for form generation. ',
'  null; ',
'end; ',
' ',
'-- search helper  ',
'procedure initialize_search_items ',
'as ',
'begin ',
'  apex_collection.create_or_truncate_collection( ',
'    p_collection_name => ''SEARCH_WORDS''); ',
'  apex_collection.create_or_truncate_collection( ',
'    p_collection_name => ''SEARCH_HASHTAGS''); ',
'  apex_collection.create_or_truncate_collection( ',
'    p_collection_name => ''SEARCH_OWNERS''); ',
'end; ',
' ',
'procedure remove_search_items( ',
'  p_search_items in varchar2) ',
'as ',
'  l_words      APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_hashtags   APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_owners     APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'begin ',
'  tcw_util.extract_search_items ( ',
'      p_string        => p_search_items, ',
'      p_item_words    => l_words, ',
'      p_item_hashtags => l_hashtags, ',
'      p_item_owners   => l_owners); ',
'  for i in 1..l_words.count loop ',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_WORDS'', ',
'                                   p_attr_number => 1, ',
'                                   p_attr_value => l_words(i)); ',
'  end loop; ',
'  for i in 1..l_hashtags.count loop ',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_HASHTAGS'', ',
'                                   p_attr_number => 1, ',
'                                   p_attr_value => l_hashtags(i)); ',
'  end loop; ',
'  for i in 1..l_owners.count loop ',
'    apex_collection.delete_members(p_collection_name => ''SEARCH_OWNERS'', ',
'                                   p_attr_number => 1, ',
'                                   p_attr_value => l_owners(i)); ',
'  end loop; ',
'end; ',
' ',
'procedure add_search_items( ',
'  p_search_items in varchar2, ',
'  p_username     in varchar2 default null) ',
'as ',
'  l_words      APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_hashtags   APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_owners     APEX_APPLICATION_GLOBAL.VC_ARR2; ',
'  l_querytime  timestamp with local time zone := systimestamp; ',
'begin ',
'  tcw_util.extract_search_items ( ',
'      p_string        => p_search_items, ',
'      p_item_words    => l_words, ',
'      p_item_hashtags => l_hashtags, ',
'      p_item_owners   => l_owners); ',
'  if l_words.count > 0 then ',
'    if p_username is not null then ',
'      tcw_util.log_query_history(l_words, p_username, l_querytime, ''K''); ',
'    end if; ',
'    apex_collection.add_members(p_collection_name => ''SEARCH_WORDS'',  ',
'                                p_c001 => l_words); ',
'  end if; ',
'  if l_hashtags.count > 0 then ',
'    if p_username is not null then ',
'      tcw_util.log_query_history(l_hashtags, p_username, l_querytime, ''H''); ',
'    end if; ',
'    apex_collection.add_members(p_collection_name => ''SEARCH_HASHTAGS'', ',
'                                p_c001 => l_hashtags); ',
'  end if; ',
'  if l_owners.count > 0 then ',
'    if p_username is not null then ',
'      tcw_util.log_query_history(l_owners, p_username, l_querytime, ''P''); ',
'    end if; ',
'    apex_collection.add_members(p_collection_name => ''SEARCH_OWNERS'', ',
'                                p_c001 => l_owners); ',
'  end if; ',
'end; ',
' ',
'function get_contains return varchar2 ',
'as ',
'  l_token        apex_collections.c001%type; ',
'  l_contains     varchar2(2000); ',
'begin ',
'  -- Words ',
'  l_contains := ''''; ',
'  if apex_collection.collection_exists(''SEARCH_WORDS'') then ',
'    for c in (select distinct c001 from apex_collections where  ',
'              collection_name = ''SEARCH_WORDS'') ',
'    loop ',
'      l_token := c.c001; ',
'      -- escape Oracle Text reserved word. ',
'      if upper(l_token) in (''ABOUT'',''ACCUM'',''AND'',''BT'',''BTG'',''BTI'',''BTP'', ',
'                            ''EQUIV'',''FUZZY'',''HASPATH'',''INPATH'',''MDATA'', ',
'                            ''MINUS'',''NEAR'',''NOT'',''NT'',''NTG'',''NTI'',''NTP'',''OR'', ',
'                            ''PT'',''RT'',''SQE'',''SYN'',''TR'',''TRSYN'',''TT'',''WITHIN'',''--'') ',
'      then ',
'        l_token := ''{''||l_token||''}''; ',
'      end if; ',
'      -- do not add "and" when it is on the first place. ',
'      if length(l_contains) > 0 then ',
'        l_contains := l_contains || '' and '' || l_token; ',
'      else ',
'        l_contains := l_token; ',
'      end if; ',
'    end loop; ',
'  end if; ',
'  return l_contains; ',
'end; ',
' ',
'procedure set_preference( ',
'  p_preference_name  in varchar2, ',
'  p_preference_value in varchar2, ',
'  p_user_name in varchar2 default v(''APP_USER'')) ',
'as ',
'begin ',
'  merge into tcw_user_preferences ',
'  using dual ',
'  on ( user_name = p_user_name and preference_name = p_preference_name ) ',
'when matched then ',
'  update set preference_value = p_preference_value ',
'when not matched then ',
'  insert (preference_name, preference_value, user_name) ',
'  values(p_preference_name, p_preference_value, p_user_name); ',
'end; ',
' ',
'function get_preference( ',
'   p_preference_name in varchar2, ',
'   p_user_name       in varchar2 default v(''APP_USER'') ',
') return varchar2 ',
'is ',
'  l_v tcw_user_preferences.preference_value%type; ',
'begin ',
'  select preference_value into l_v ',
'  from tcw_user_preferences ',
'  where user_name = p_user_name and preference_name = p_preference_name; ',
'  return l_v; ',
'exception ',
'  when no_data_found then ',
'    return null; ',
'end;',
'procedure notify_update(p_doc_id   in number, ',
'                 p_template in varchar2 default ''TCWEBEMAILUPDATE'', ',
'                 p_user     in varchar2 default v(''APP_USER'')) ',
'as ',
'  l_placeholders varchar2(4000);',
'  l_title      tcw_documents.obj_name%type; ',
'  l_link       varchar2(200); ',
'  l_from       varchar2(80) := ''TCWEB Updates <noreply@oracle.com>''; ',
'begin ',
'  select obj_name into l_title from tcw_documents where link_num = p_doc_id; ',
'  l_link := ''https://tcweb.jp.xxxxx.com/TCWEB/detail?id='' || p_doc_id; ',
'  for c in (select lower(username) as email from tcw_doc_notifications  ',
'            where link_num = p_doc_id and notify_update = ''Y'' ',
'            union ',
'            select lower(follower) as email from tcw_followers ',
'            where username = p_user ',
'            ) ',
'  loop ',
'    -- do not ignore the self notification for debugging at this moment. ',
'    -- if c.email <> lower(p_user) then ',
'      apex_mail.send( ',
'        p_to => c.email, p_from => l_from, ',
'        p_template_static_id => p_template,',
'        p_placeholders       => ''{'' ||',
'        ''    "LINK":''  || apex_json.stringify( l_link ) ||',
'        ''   ,"TITLE":'' || apex_json.stringify( l_title ) ||',
'        ''   ,"USER":''  || apex_json.stringify( p_user ) ||',
'        ''}'' );',
'        -- end if; ',
'  end loop; ',
'end; ',
'end "TCW_UTIL"; ',
'/',
'',
'CREATE OR REPLACE FORCE VIEW "TCW_DOC_LINKS_V" ("LINK_NUM", "LINK_NAMES") AS ',
'  select l.doc_id as link_num, listagg(''<a href="'' || l.link_url || ''">'' || t.link_type_name || ''</a>'',''</br>'') within group (order by t.link_type_name nulls last) as link_names from tcw_doc_links l join tcw_link_types t on l.link_type = t.link_type_'
||'id group by doc_id',
';',
'',
'CREATE OR REPLACE FORCE VIEW "TCW_DOC_NOTIF_V" ("LINK_NUM", "OBJ_NAME", "U_EMAIL", "USERNAME") AS ',
'  select l.link_num, l.obj_name, l.upd_username as u_email, n.username ',
'from tcw_documents l join tcw_doc_notifications n on l.link_num = n.link_num ',
'where notify_update = ''Y''',
';',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7887315424487472)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_CONTENT_TYPES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7887532690487475)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOCUMENTS_N1'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
end;
/
begin
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7887691214487475)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOCUMENTS_N2'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7887925689487475)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOCUMENTS_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7888064157487475)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOC_ARCHIVES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7888291342487475)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOC_DATA_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7888486893487475)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_DOC_REMARKS_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7888673690487476)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_FOLLOWERS_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7888891068487476)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_LINK_TYPES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7889076723487476)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_SEARCH_ABSTRACT'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7889322606487476)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_SEARCH_DB_DOC'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7889460026487476)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_SEARCH_TITLE'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7889664343487476)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_USER_NAMES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7889854094487477)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'INDEX'
,p_object_name=>'TCW_USER_PREFERENCES_PK'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7890072120487477)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'TCW_UTIL'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7890275029487477)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_DOCUMENTS_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7890483706487477)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_DOC_REMARKS_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7890699762487477)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_FOLLOWERS_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7890949574487478)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_LINK_TYPES_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7891116831487478)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'TCW_USER_PREFERENCES_SEQ'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7891273568487478)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_CONSUL_USER'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7891471041487478)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_CONTENT_TYPES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7891678662487478)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOCUMENTS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7891911782487478)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_ACLS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7892118553487478)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_ARCHIVES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7892258534487479)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_DATA'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7892508870487479)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_LINKS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7892738196487479)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_NOTIFICATIONS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7896147957487482)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOC_REMARKS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7896251657487482)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_DOWNLOAD_HISTORY'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7896539130487482)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_FOLLOWERS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7896716166487483)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_HASHTAGS'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7896869529487483)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_LINK_TYPES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7897139880487483)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_QUERY_HISTORY'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7897316577487483)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_USER_NAMES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7897542858487483)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'TCW_USER_PREFERENCES'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7892927947487479)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_CONTENT_TYPES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7893069053487479)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_CONTENT_TYPES_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7893310060487479)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_ACLS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7893542113487480)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_ACLS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7893653275487480)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_ARCHIVES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7893886413487480)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_LINKS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7894108494487480)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_LINKS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7894321063487480)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_NOTIFICATIONS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7894451848487480)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_REMARKS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7894736077487481)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_DOC_REMARKS_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7894935721487481)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_FOLLOWERS_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7895055100487481)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_LINK_TYPES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7895330633487481)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_LINK_TYPES_TU'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7895483140487481)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'TCW_USER_PREFERENCES_TI'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7895676131487481)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'TCW_DOC_LINKS_V'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(7895946207487482)
,p_script_id=>wwv_flow_api.id(7887195761487447)
,p_object_owner=>'#OWNER#'
,p_object_type=>'VIEW'
,p_object_name=>'TCW_DOC_NOTIF_V'
,p_last_updated_by=>'ADMIN'
,p_last_updated_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
,p_created_by=>'ADMIN'
,p_created_on=>to_date('20181206171813','YYYYMMDDHH24MISS')
);
end;
/
prompt --application/deployment/install/install_content_types
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16901842557695262)
,p_install_id=>wwv_flow_api.id(16885022019660955)
,p_name=>'content_types'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msexcel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.visio'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/.pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/ppt_'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/csv'',''CSV'',''CSV\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-gzip-compressed'',''GZIP'',''GZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/pjpeg'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/rtf'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.presentationml.presentation'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/download'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octet-stream-dummy'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/msexcel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-download'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-tar'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/quicktime'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/gif'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/java-archive'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-lzh'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/msexcell'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-lha'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octet_stream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.ms-powerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octet-stream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.wordprocessingml.document'',''DOC'',''MS Word \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/plain'',''TEXT'',''\30C6\30AD\30B9\30C8\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/html'',''HTML'',''HTML\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-mspowerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/ms-powerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''unknown/data'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-gzip'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''base64'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-lhacalzh'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-sdlc'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/bmp'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/xml'',''XML'',''XML\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-excel.csv'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msdos-program'',''EXE'',''\5B9F\884C\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-octetstream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/exe'',''EXE'',''\5B9F\884C\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''binary/octet-stream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/zip'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/microsoft'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-winzip'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/kswps'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/force-download'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-compress'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-sh'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''text/richtext'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/png'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''applicatioin/vnd.ms-excel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/pptx'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/msword'',''DOC'',''MS Word \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.presentationml.document'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msdownload'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/powerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.ms-excel'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-compressed'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/wps-office.pptx'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-zip'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''txt'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-csv'',''CSV'',''CSV\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/x-ms-wmv'',''WMV'',''Windows\30E1\30C7\30A3\30A2\30D3\30C7\30AA'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/mspowerpoint'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-ibm hpb.webartfile'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/unknown'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/soffice'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-unknown-content-type-dis.document'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''appication/pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-zip-compressed'',''ZIP'',''ZIP\5727\7E2E\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-perl'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.rn-realmedia'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-as400attachment'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-zip-compress'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/mp4'',''MP4'',''MP4\30D3\30C7\30AA'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''video/mpeg'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/ppt'',''PPT'',''MS Power Point \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''message/rfc822'',''MIL'',''\30E1\30FC\30EB\30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-msword-doc'',''DOC'',''MS Word \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/x-pdf'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/octetstream'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/vnd.ms-excel; name="\30B7\30B9\30C6\30E0\30EA\30B9\30C8\6700\65B0.xls"'',''XLS'',''MS Excel \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/3dr'',''OTHER'',''\305D\306E\4ED6'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''application/acrobat'',''PDF'',''Adobe Acrobat \30D5\30A1\30A4\30EB'');'),
unistr('insert into tcw_content_types(content_type,content_type_alias,description) values(''image/jpeg'',''JPEG'',''JPEG\753B\50CF\30D5\30A1\30A4\30EB'');'),
'commit;'))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done