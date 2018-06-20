set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.37'
,p_default_workspace_id=>1812014226368315
,p_default_application_id=>102
,p_default_owner=>'HR'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/item_type/com_oracle_apex_starrating_modern
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(1874350127815102240)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.STARRATING_MODERN'
,p_display_name=>'Modern Star Rating'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_image_prefix=>'#IMAGE_PREFIX#plugins/com.oracle.apex.starrating_modern/'
,p_javascript_file_urls=>'#PLUGIN_FILES#com_oracle_apex_starrating_modern.js'
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_starrating_modern.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'c_default_stars      constant number        := 5;',
'c_default_icon_class constant varchar2(128) := ''fa-star'';',
'c_default_acolor     constant varchar2(30)  := ''red'';',
'c_default_bcolor     constant varchar2(30)  := ''#e0e0e0'';',
'',
'--===============================================================================',
'-- Renders the star rating item type based on the configuration of the page item.',
'--===============================================================================',
'procedure render_star_rating (',
'    p_item   in apex_plugin.t_page_item,',
'    p_plugin in apex_plugin.t_plugin,',
'    p_param  in apex_plugin.t_item_render_param,',
'    p_result in out nocopy apex_plugin.t_item_render_result )',
'is',
'    c_number_of_stars      constant number          := nvl(to_number(p_item.attribute_01), c_default_stars);',
'    c_escaped_value        constant varchar2(32767) := apex_escape.html_attribute(p_param.value);',
'    ',
'    c_default_icon         constant varchar2(128)   := nvl( p_plugin.attribute_04, c_default_icon_class );',
'    c_icon_class           constant varchar2(128)   := p_item.attribute_02;',
'    c_default_icon_acolor  constant varchar2(128)   := nvl( p_plugin.attribute_02, c_default_acolor );',
'    c_icon_acolor          constant varchar2(128)   := p_item.attribute_04;',
'    c_default_icon_bcolor  constant varchar2(128)   := nvl( p_plugin.attribute_03, c_default_bcolor );',
'    c_icon_bcolor          constant varchar2(128)   := p_item.attribute_05;',
'    ',
'    c_label_text           constant varchar2(128)   := nvl( p_item.attribute_06, ''#VALUE#'' );',
'    ',
'    c_use_default          boolean                  := case when p_item.attribute_03 = ''Y'' then true else false end;',
'    ',
'    l_name                 varchar2(30);',
'    l_clear_tooltip        varchar2(4000)           := sys.htf.escape_sc(nvl(p_plugin.attribute_01, ''Clear Rating''));',
'',
'begin',
'    l_name := apex_plugin.get_input_name_for_item;',
'    ',
'    if p_param.is_readonly or p_param.is_printer_friendly then ',
'        apex_plugin_util.print_hidden_if_readonly (',
'            p_item_name           => l_name,',
'            p_value               => p_param.value,',
'            p_is_readonly         => p_param.is_readonly,',
'            p_is_printer_friendly => p_param.is_printer_friendly',
'       );',
'       sys.htp.prn (',
'           ''<input type="text" '' ||',
'           ''class="'' || ''apex-item-starrating apex-item-plugin'' || ''" '' ||',
'           ''id="''    || p_item.name|| ''_DISPLAY" '' ||',
'           ''value="'' || case when p_param.value is null then '''' else ltrim( rtrim ( c_escaped_value ) ) end || ''" />'' );',
'',
'    else',
'    ',
'        -- render the text field widget',
'        sys.htp.prn (',
'            ''<input type="text" '' ||',
'            wwv_flow_plugin_util.get_element_attributes(p_item, l_name, ''apex-item-starrating apex-item-plugin'', false) ||',
'            ''id="''    || p_item.name|| ''" '' ||',
'            ''value="'' || case when p_param.value is null then '''' else ltrim( rtrim ( c_escaped_value ) ) end || ''" />'' );',
'           ',
'    end if;',
'',
'    apex_javascript.add_onload_code (',
'        p_code => ''starRatingItemInit("''|| case when p_param.is_readonly or p_param.is_printer_friendly then p_item.name || ''_DISPLAY'' else p_item.name end ||''", {''||',
'                apex_javascript.add_attribute( ''readOnly'',      p_param.is_readonly,                                                       false, true  ) ||',
'                apex_javascript.add_attribute( ''numStars'',      c_number_of_stars,                                                         false, true  ) ||',
'                apex_javascript.add_attribute( ''clearToolip'',   l_clear_tooltip,                                                           false, true  ) ||',
'                apex_javascript.add_attribute( ''iconClass'',     case when c_use_default then c_default_icon else c_icon_class end,         false, true  ) ||',
'                apex_javascript.add_attribute( ''isRequired'',    p_item.is_required,                                                        false, true  ) ||',
'                apex_javascript.add_attribute( ''labelText'',     c_label_text,                                                              false, true  ) ||',
'                apex_javascript.add_attribute( ''activeColor'',   case when c_use_default then c_default_icon_acolor else c_icon_acolor end, false, true  ) ||',
'                apex_javascript.add_attribute( ''inactiveColor'', case when c_use_default then c_default_icon_bcolor else c_icon_bcolor end, false, false ) ||',
'                ''});'' );',
'',
'    -- Tell APEX that this field is navigable',
'    p_result.is_navigable := (not p_param.is_readonly = false and not p_param.is_printer_friendly);',
'',
'end render_star_rating;',
'',
'',
'procedure metadata_star_rating (',
'    p_item   in            apex_plugin.t_item,',
'    p_plugin in            apex_plugin.t_plugin,',
'    p_param  in            apex_plugin.t_item_meta_data_param,',
'    p_result in out nocopy apex_plugin.t_item_meta_data_result )',
'is',
'begin',
'    p_result.escape_output := false;',
'end;',
'',
'--==============================================================================',
'-- Validates the submitted star rating value against the configuration to make',
'-- sure that no invalid values are submitted by a hacker.',
'--==============================================================================',
'procedure validate_star_rating (',
'    p_item   in            apex_plugin.t_item,',
'    p_plugin in            apex_plugin.t_plugin,',
'    p_param  in            apex_plugin.t_item_validation_param,',
'    p_result in out nocopy apex_plugin.t_item_validation_result )',
'is',
'    c_number_of_stars constant number := nvl(to_number(p_item.attribute_01), c_default_stars);',
'',
'    l_value number;',
'begin',
'    if p_param.value is null then return; end if;',
'    ',
'    -- The value has to be numeric, in the boundaries of 1 and "number of stars"',
'    if wwv_flow_utilities.is_numeric(p_param.value) then',
'        l_value := to_number(p_param.value);',
'        if not (   l_value between 0 and c_number_of_stars    )',
'        then',
'            p_result.message := l_value || '' is not in the valid rating range of 1 - ''||c_number_of_stars;',
'        end if;',
'    else',
'        p_result.message := apex_escape.html(p_param.value)||'' is not numeric'';',
'    end if;',
'end validate_star_rating;'))
,p_api_version=>2
,p_render_function=>'render_star_rating'
,p_meta_data_function=>'metadata_star_rating'
,p_validation_function=>'validate_star_rating'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE:ICON:ENCRYPT:FILTER'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>Modern Star Rating Item</strong></p>',
'<p>This item displays a numeric value as a number of stars or other icons. The end user can change the value by selecting the desired number of stars. The value can be adjusted by clicking the number of stars with the mouse or by using the keyboard.<'
||'/p>',
'<p>The icon to be displayed, the background and foreground colors can be adjusted either in the component settings or in the individual item settings. To use individual items and colors, set the attribute <strong>Use Component Defaults</strong> to <s'
||'trong>No</strong>.</p>',
'<p>As icons, you may use any icon from the Icon Font available in your application. For Universal Theme applications, use an icon from the <em>Font APEX</em> library.</p>'))
,p_version_identifier=>'1.1'
,p_about_url=>'http://www.oracleapex.info/'
,p_files_version=>36
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048454178457322866)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Clear Tooltip'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'Clear Rating'
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'Text which should be displayed for the tooltip of the "Clear" icon of the star rating widget. If not specified, the default text "Clear Rating" will be used.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048454500685322871)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Active Star Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_show_in_wizard=>false
,p_default_value=>'red'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_help_text=>'Choose the default color for active stars.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048454951851322872)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Inactive Star Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_show_in_wizard=>false
,p_default_value=>'lightgray'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_help_text=>'Choose the default color for inactive stars.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048455307171322872)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Default icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_show_in_wizard=>false
,p_default_value=>'fa-star'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'fa-star',
'fa-database',
'fa-apex',
'</pre>'))
,p_help_text=>'Choose the default icon to use.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048455754003322872)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Number of Stars'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'9'
,p_display_length=>2
,p_max_length=>2
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_help_text=>'Specify the maximum number of stars.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048456161380322873)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>30
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_show_in_wizard=>false
,p_default_value=>'fa-star'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2048456558228322874)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'fa-star',
'fa-database',
'fa-apex',
'</pre>'))
,p_help_text=>'Specify the icon to use.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048456558228322874)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>20
,p_prompt=>'Use Component Defaults'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_show_in_wizard=>false
,p_default_value=>'Y'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_help_text=>'Choose whether to use component defaults or not.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048456915097322874)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Active Star Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_show_in_wizard=>false
,p_default_value=>'red'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2048456558228322874)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>'Choose the color for active stars.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048457386426322874)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Inactive Star Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_show_in_wizard=>false
,p_default_value=>'lightgray'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2048456558228322874)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>'Choose the color for inactive stars.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2048457709978322874)
,p_plugin_id=>wwv_flow_api.id(1874350127815102240)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Tooltip Template'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'Rating: #VALUE#'
,p_display_length=>30
,p_max_length=>50
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_is_translatable=>true
,p_examples=>'Rating: #VALUE# stars.'
,p_help_text=>'Specify the template for the tooltip. The #VALUE# substitution is being replaces by the current rating value.'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
