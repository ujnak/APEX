set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040000 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,25146814748815556));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2010.05.13');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,888);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

prompt  ...plugins
--
--application/shared_components/plugins/item_type/com_oracle_slider
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'ITEM TYPE'
 ,p_name => 'COM.ORACLE.SLIDER'
 ,p_display_name => 'Slider'
 ,p_image_prefix => '#IMAGE_PREFIX#'
 ,p_plsql_code => 
'c_min_value constant number := 0;'||chr(10)||
'c_max_value constant number := 1010;'||chr(10)||
''||chr(10)||
'function render_slider ('||chr(10)||
'    p_item                in apex_plugin.t_page_item,'||chr(10)||
'    p_plugin              in apex_plugin.t_plugin,'||chr(10)||
'    p_value               in varchar2,'||chr(10)||
'    p_is_readonly         in boolean,'||chr(10)||
'    p_is_printer_friendly in boolean )'||chr(10)||
'    return apex_plugin.t_page_item_render_result'||chr(10)||
'is'||chr(10)||
'    l_escaped_value varchar2(3'||
'2767) := sys.htf.escape_sc(p_value);'||chr(10)||
''||chr(10)||
'    l_name          varchar2(30);'||chr(10)||
'    l_result        apex_plugin.t_page_item_render_result;'||chr(10)||
'begin'||chr(10)||
'    --*********************'||chr(10)||
'    -- NOTE: This plug-in isn''t a good example because it''s missing the readonly/print code!'||chr(10)||
'    --       But it shows you how a widget can provide it''s own events for dynamic actions.'||chr(10)||
'    --*********************'||chr(10)||
'    if apex_applicatio'||
'n.g_debug then'||chr(10)||
'        apex_plugin_util.debug_page_item ('||chr(10)||
'            p_plugin              => p_plugin,'||chr(10)||
'            p_page_item           => p_item,'||chr(10)||
'            p_value               => p_value,'||chr(10)||
'            p_is_readonly         => p_is_readonly,'||chr(10)||
'            p_is_printer_friendly => p_is_printer_friendly );'||chr(10)||
'    end if;'||chr(10)||
''||chr(10)||
'    l_name := apex_plugin.get_input_name_for_page_item ('||chr(10)||
'                  p_'||
'is_multi_value => false );'||chr(10)||
''||chr(10)||
'    apex_css.add_file ('||chr(10)||
'        p_name      => ''jquery.ui.slider'','||chr(10)||
'        p_directory => wwv_flow.g_image_prefix||''libraries/jquery-ui/1.8/themes/base/'','||chr(10)||
'        p_version   => null );'||chr(10)||
''||chr(10)||
'    wwv_flow_javascript.add_library ('||chr(10)||
'        p_name      => ''jquery.ui.slider.min'','||chr(10)||
'        p_directory => wwv_flow.g_image_prefix||''libraries/jquery-ui/1.8/ui/minified/'','||chr(10)||
'        p_ve'||
'rsion   => null );'||chr(10)||
''||chr(10)||
'    -- render the div for the slider and the input field'||chr(10)||
''||chr(10)||
'    htp.p(''<p/><div id="''||p_item.name||''_control"''||'||chr(10)||
'          ''></div><p/>'');'||chr(10)||
'    htp.p(''<span id="''||p_item.name||''_display">$''||l_escaped_value||''</span>'');'||chr(10)||
'    htp.p(''<input type="hidden" id="''||p_item.name||''" ''||''name="''||l_name||''" ''||''value="''||l_escaped_value||''">'');'||chr(10)||
''||chr(10)||
'    -- initialize the slider when the page '||
'has been rendered    '||chr(10)||
'    wwv_flow_javascript.add_onload_code ('||chr(10)||
'        p_code => ''apex.jQuery("#''||p_item.name||''_control").slider({''||'||chr(10)||
'                      ''orientation: "''||p_item.attribute_01         ||''",''||'||chr(10)||
'                      ''min: '' ||nvl(p_item.attribute_02, c_min_value)||'',''||'||chr(10)||
'                      ''max: '' ||nvl(p_item.attribute_03, c_max_value)||'',''||'||chr(10)||
'                      ''step: ''||'||
'nvl(p_item.attribute_04, 1)          ||'',''||'||chr(10)||
'                      ''animation: ''||case when p_item.attribute_05 = ''Y'' then ''true'' else ''false'' end||'',''||'||chr(10)||
'                      ''value: ''||sys.htf.escape_sc(nvl(p_value, nvl(p_item.attribute_02, 0)))||'',''||'||chr(10)||
'                      ''start: function(pEvent, pUi){jQuery("#''||p_item.name||''").trigger("slidestart", pUi);},''||'||chr(10)||
'                      ''slide: f'||
'unction(pEvent, pUi){''||'||chr(10)||
'                             ''  $s("''||p_item.name||''", pUi.value);''||'||chr(10)||
'                             ''  $s("''||p_item.name||''_display", "$"+pUi.value);''||'||chr(10)||
'                             ''  jQuery("#''||p_item.name||''").trigger("slide", pUi);''||'||chr(10)||
'                             ''},''||'||chr(10)||
'                      ''change: function(pEvent, pUi){jQuery("#''||p_item.name||''").trigger("slidech'||
'ange", pUi);},''||'||chr(10)||
'                      ''stop: function(pEvent, pUi){jQuery("#''||p_item.name||''").trigger("slidestop", pUi);}});'' );'||chr(10)||
'    '||chr(10)||
'    -- Tell APEX that this field is navigable'||chr(10)||
'    l_result.is_navigable := true;'||chr(10)||
''||chr(10)||
'    return l_result;'||chr(10)||
'end render_slider;'||chr(10)||
''||chr(10)||
'function validate_slider ('||chr(10)||
'    p_item   in apex_plugin.t_page_item,'||chr(10)||
'    p_plugin in apex_plugin.t_plugin,'||chr(10)||
'    p_value  in varchar2 )'||chr(10)||
'    re'||
'turn apex_plugin.t_page_item_validation_result'||chr(10)||
'is'||chr(10)||
'    l_result apex_plugin.t_page_item_validation_result;'||chr(10)||
'begin'||chr(10)||
'    if apex_application.g_debug then'||chr(10)||
'        apex_plugin_util.debug_page_item(p_plugin,p_item);'||chr(10)||
'    end if;'||chr(10)||
''||chr(10)||
'    if p_value is null then return null; end if;'||chr(10)||
'    '||chr(10)||
'    if wwv_flow_utilities.is_numeric(p_value) and'||chr(10)||
'       not to_number(p_value) between to_number(nvl(p_item.attribute_02, c_'||
'min_value)) and to_number(nvl(p_item.attribute_03, c_max_value))'||chr(10)||
'    then'||chr(10)||
'        l_result.message := sys.htf.escape_sc(p_value)||'' is not in the valid range of ''||'||chr(10)||
'                            nvl(p_item.attribute_02, c_min_value)||'' - ''||'||chr(10)||
'                            nvl(p_item.attribute_03, c_max_value);'||chr(10)||
'    end if;'||chr(10)||
'    '||chr(10)||
'    return l_result;'||chr(10)||
'end validate_slider;'||chr(10)||
''
 ,p_render_function => 'render_slider'
 ,p_ajax_function => 'ajax_slider'
 ,p_validation_function => 'validate_slider'
 ,p_standard_attributes => 'VISIBLE:SESSION_STATE:READONLY:ESCAPE_OUTPUT:SOURCE:ELEMENT:ENCRYPT'
 ,p_help_text => '<br />'||chr(10)||
''
 ,p_version_identifier => '1.0'
 ,p_about_url => 'http://www.oracleapex.info/'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 1180433623392097591 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'Display orientation'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => true
 ,p_default_value => 'horizontal'
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 850282758352272570 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 1180433623392097591 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'Horizontal'
 ,p_return_value => 'horizontal'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 850282852568272570 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 1180433623392097591 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'Vertical'
 ,p_return_value => 'vertical'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 1180441023656154638 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 20
 ,p_prompt => 'Minimum Value'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '0'
 ,p_display_length => 6
 ,p_max_length => 6
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 1180433915353097631 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 30
 ,p_prompt => 'Maximum Value'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '1000'
 ,p_display_length => 6
 ,p_max_length => 6
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 1180434306627097685 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 4
 ,p_display_sequence => 40
 ,p_prompt => 'Step'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '1'
 ,p_display_length => 6
 ,p_max_length => 6
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 1180434602955097740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 5
 ,p_display_sequence => 50
 ,p_prompt => 'Animate'
 ,p_attribute_type => 'CHECKBOX'
 ,p_is_required => false
 ,p_default_value => 'N'
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_event (
  p_id => 997184525296552691 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_name => 'slide'
 ,p_display_name => 'Slide'
  );
wwv_flow_api.create_plugin_event (
  p_id => 997184907765557151 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_name => 'slidechange'
 ,p_display_name => 'Change'
  );
wwv_flow_api.create_plugin_event (
  p_id => 997184115946549981 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_name => 'slidestart'
 ,p_display_name => 'Start'
  );
wwv_flow_api.create_plugin_event (
  p_id => 997185218501560268 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 1180433432134081207 + wwv_flow_api.g_id_offset
 ,p_name => 'slidestop'
 ,p_display_name => 'Stop'
  );
null;
 
end;
/

commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done
