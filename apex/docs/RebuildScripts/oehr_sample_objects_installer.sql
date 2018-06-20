set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 543 - OEHR Sample Objects
--
-- Application Export:
--   Application:     543
--   Name:            OEHR Sample Objects
--   Date and Time:   16:48 Wednesday November 1, 2006
--   Exported By:     2DAYPLUS
--   Flashback:       0
--   Export Type:     Application Export
--   Version: 2.1.0.00.37
 
-- Import:
--   Using application builder
--   or
--   Using sqlplus as the Oracle user: FLOWS_020200
 
-- Application Statistics:
--   Pages:                 1
--     Items:               0
--     Computations:        0
--     Validations:         0
--     Processes:           0
--     Regions:             1
--     Buttons:             0
--   Shared Components
--     Breadcrumbs:         1
--        Entries           0
--     Items:               0
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            0
--        Tabs:             0
--     NavBars:             0
--     Lists:               0
--     Shortcuts:           0
--     Themes:              0
--     Templates:
--        Page:             1
--        List:             0
--        Report:           0
--        Label:            0
--        Region:           0
--     Messages:            0
--     Build Options:       0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to sqlplus as the owner (parsing schema) of the application or as the product schema.
  wwv_flow_api.set_security_group_id(p_security_group_id=>56013809141722139);
 
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
begin wwv_flow.g_browser_language := 'en-us'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2006.02.24');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 543;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(543);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(543);
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => 543,
  p_display_id=> 543,
  p_owner => '2DAYPLUS',
  p_name  => 'OEHR Sample Objects',
  p_alias => 'F471543',
  p_page_view_logging => 'YES',
  p_checksum_salt_last_reset => '20061101161705',
  p_home_link         => 'f?p=&APP_ID.:1:&SESSION.',
  p_box_width         => '98%',
  p_flow_language     => 'en-us',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_flow_image_prefix => '/i/',
  p_documentation_banner=> '',
  p_authentication    => 'CUSTOM2',
  p_login_url         => '',
  p_logout_url        => '',
  p_application_tab_set=> 0,
  p_logo_image => 'TEXT:OEHR Sample Schemas for<br/>Oracle Application Express 2 Day + and Advanced Tutorial Guides',
  p_logo_image_attributes => 'style="font-family:Arial; color:#004C66; font-size:16px; white-space:nowrap; font-weight:bold;"',
  p_public_url_prefix => '',
  p_public_user       => '',
  p_dbauth_url_prefix => '',
  p_proxy_server      => '',
  p_cust_authentication_process=> '.'||to_char(627459806054205910 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'release 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_theme_id => 18,
  p_last_updated_by => '2DAYPLUS',
  p_last_upd_yyyymmddhh24miss=> '20061101161705',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
null;
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

 
--application/pages/page_00001
prompt  ...PAGE 1: About
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 1,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'About',
  p_step_title=> 'About',
  p_step_sub_title => 'About',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => 627452827770205833+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => '2DAYPLUS',
  p_last_upd_yyyymmddhh24miss => '20060915071343',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>1,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Installing this application created the objects and sample data needed to complete the exercises in the <em>Oracle Application Express 2 Day + Developer''s Guide</em> and the <em>Oracle Application Express Advanced Tutorials Guide</em>. Deleting this application and selecting to deinstall the supporting objects completely removes all objects that were created.'||chr(10)||
'If you did not install the supporting';

s:=s||' objects when you imported this application, you must do so now. <p />'||chr(10)||
'<ol>'||chr(10)||
'<li>Click <strong>Edit Application</strong> on the Developer toolbar.</li>'||chr(10)||
'<li>On the Tasks list, click <strong>Manage Supporting Object Definitions</strong>.</li>'||chr(10)||
'<li>Click <strong>Install</strong>.</li>'||chr(10)||
'</ol>';

wwv_flow_api.create_page_plug (
  p_id=> 627694907693352687 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'About',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 627461131559205937 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
null;
 
end;
/

prompt  ...page templates for application: 543
--
--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 627452827770205833
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/theme_V22.css" type="text/css" />'||chr(10)||
'<!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_18/ie.css" type="text/css" /><![endif]-->'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<br class="t18Break"/>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">'||chr(10)||
'<tr>'||chr(10)||
'<td id="t18Logo" valign="top"><br />#LOGO#<br />#REGION_POSITION_06#</td>'||chr(10)||
'<td id="t18HeaderMiddle"  valign="top" width="100%">#REGION_POSITION_07#<br /></td>'||chr(10)||
'<td id="t18NavBar" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" summary=""';

c3:=c3||' id="t18PageBody"  width="95%" height="70%" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="background-color:#EFF2F3;"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_tl.gif" alt="" /></td>'||chr(10)||
'<td class="t18TopMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_tm.gif" alt="" /></td>'||chr(10)||
'<td valign="top" height="3"><img sr';

c3:=c3||'c="#IMAGE_PREFIX#themes/theme_18/page_tr.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t18PageLeft"><br /></td>'||chr(10)||
'<td valign="top" id="t18ContentBody" height="100%" width="100%">'||chr(10)||
'<div id="t18Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<div id="t18ContentMiddle" style="padding:5px;">#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</div>'||chr(10)||
'</td>'||chr(10)||
'<td class="t18PageR';

c3:=c3||'ight"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_bl.gif" alt="" /></td>'||chr(10)||
'<td class="t18BottomMiddleFill"><img src="#IMAGE_PREFIX#themes/theme_18/page_bm.gif" alt="" /></td>'||chr(10)||
'<td valign="bottom" height="3"><img src="#IMAGE_PREFIX#themes/theme_18/page_br.gif" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" height="3" colspan="3" style="back';

c3:=c3||'ground-color:#EFF2F3;"><br /><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 627452827770205833 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div id="t18Success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div id="t18Notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t18NavBar">#TEXT#</a> |',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" align="left"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 18,
  p_theme_class_id => 3,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ...button templates
--
---------------------------------------
prompt  ...region templates
--
prompt  ...List Templates
--
prompt  ...report templates
--
prompt  ...label templates
--
prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 328309200382564579
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 328309200382564579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list.gif',
  p_popup_icon_attr=>'width="13" height="13"',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#platform2.css" type="text/css">',
  p_page_body_attr=>'bgcolor="white" OnLoad="first_field()"',
  p_before_field_text=>' ',
  p_page_heading_text=>'<link rel="stylesheet" href="#IMAGE_PREFIX#platform2.css" type="text/css"><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-family:arial; background-color:#ffffff;} </style>',
  p_page_footer_text =>'</center></td></tr></table>',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div><br />',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW',
  p_result_rows_per_pg=>10,
  p_before_result_set=>'',
  p_after_result_set   =>'');
end;
null;
 
end;
/

prompt  ...calendar templates
--
prompt  ...application themes
--
prompt  ...build options used by application 543
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 543
--
--application/shared_components/globalization/language
prompt  ...Language Maps for Application 543
--
 
begin
 
null;
 
end;
/

prompt  ...Shortcuts
--
prompt  ...web services (9iR2 or better)
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/html_db
prompt  ......scheme 627459704988205907
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 627459704988205907 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'HTML DB',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......scheme 627459806054205910
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 627459806054205910 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......scheme 627459926530205911
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 627459926530205911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&amp;p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

--application/deployment/definition
prompt  ...application deployment
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
begin
s:=s||'rem'||chr(10)||
'rem'||chr(10)||
'rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'rem'||chr(10)||
'rem'||chr(10)||
'rem NAME'||chr(10)||
'rem   drop_schema.sql'||chr(10)||
'rem'||chr(10)||
''||chr(10)||
'rem'||chr(10)||
'rem  First drop the Online Catalog (OC) objects'||chr(10)||
'rem'||chr(10)||
''||chr(10)||
'drop table oehr_categories_tab cascade constraints ;'||chr(10)||
''||chr(10)||
'drop view oehr_oc_customers;'||chr(10)||
'drop view oehr_oc_corporate_customers;'||chr(10)||
'drop view oehr_oc_orders;'||chr(10)||
'drop view oehr_oc_inventories;'||chr(10)||
'drop view oehr_oc_product_information;';

s:=s||''||chr(10)||
''||chr(10)||
'drop type oehr_order_list_typ force;'||chr(10)||
'drop type oehr_product_ref_list_typ force;'||chr(10)||
'drop type oehr_subcategory_ref_list_typ force;'||chr(10)||
'drop type oehr_leaf_category_typ force;'||chr(10)||
'drop type oehr_composite_category_typ force;'||chr(10)||
'drop type oehr_catalog_typ force;'||chr(10)||
'drop type oehr_category_typ force;'||chr(10)||
''||chr(10)||
'drop type oehr_customer_typ force;'||chr(10)||
'drop type oehr_corporate_customer_typ force;'||chr(10)||
'drop type oehr_warehouse_typ force;'||chr(10)||
'';

s:=s||'drop type oehr_order_item_typ force;'||chr(10)||
'drop type oehr_order_item_list_typ force;'||chr(10)||
'drop type oehr_order_typ force;'||chr(10)||
'drop type oehr_inventory_typ force;'||chr(10)||
'drop type oehr_inventory_list_typ force;'||chr(10)||
'drop type oehr_product_information_typ force;'||chr(10)||
''||chr(10)||
'commit;'||chr(10)||
''||chr(10)||
'DROP TABLE        oehr_customers             CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE        oehr_inventories           CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE        oehr_o';

s:=s||'rder_items           CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE        oehr_orders                CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE        oehr_product_descriptions  CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE        oehr_product_information   CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE        oehr_warehouses            CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE        oehr_promotions             CASCADE CONSTRAINTS;'||chr(10)||
''||chr(10)||
'DROP TYPE         oehr_cus';

s:=s||'t_address_typ;'||chr(10)||
'DROP TYPE         oehr_phone_list_typ;'||chr(10)||
''||chr(10)||
'DROP SEQUENCE     oehr_orders_seq;'||chr(10)||
'DROP SEQUENCE     oehr_customers_seq;'||chr(10)||
'DROP SEQUENCE     oehr_order_items_seq;'||chr(10)||
'DROP SEQUENCE     oehr_products_seq;'||chr(10)||
''||chr(10)||
'DROP VIEW         oehr_bombay_inventory;'||chr(10)||
'DROP VIEW         oehr_product_prices;'||chr(10)||
'DROP VIEW         oehr_products;'||chr(10)||
'DROP VIEW         oehr_sydney_inventory;'||chr(10)||
'DROP VIEW         oehr_toronto_inventory';

s:=s||';'||chr(10)||
'DROP VIEW         oehr_account_managers;'||chr(10)||
'DROP VIEW         oehr_customers_view;'||chr(10)||
'DROP VIEW         oehr_orders_view;'||chr(10)||
''||chr(10)||
'DROP FUNCTION     oehr_get_phone_number_f;'||chr(10)||
''||chr(10)||
''||chr(10)||
'DROP PROCEDURE oehr_add_job_history;'||chr(10)||
'DROP PROCEDURE oehr_secure_dml;'||chr(10)||
''||chr(10)||
'DROP VIEW oehr_emp_details_view;'||chr(10)||
''||chr(10)||
'DROP SEQUENCE oehr_departments_seq;'||chr(10)||
'DROP SEQUENCE oehr_employees_seq;'||chr(10)||
'DROP SEQUENCE oehr_locations_seq;'||chr(10)||
''||chr(10)||
'DROP TABLE oehr_regions    ';

s:=s||' CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE oehr_departments CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE oehr_locations   CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE oehr_jobs        CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE oehr_job_history CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE oehr_employees   CASCADE CONSTRAINTS;'||chr(10)||
'DROP TABLE oehr_countries   CASCADE CONSTRAINTS;  '||chr(10)||
''||chr(10)||
'COMMIT;';

wwv_flow_api.create_install (
  p_id => 627502511577259195 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_include_in_export_yn => 'Y',
  p_welcome_message => 'The installation of this application creates the objects necessary to use the Oracle Application Express 2 Day Plus Developer''s Guide and the Oracle Application Express Advanced Tutorials Guide.  It also loads the data necessary for the tutorial.  Deleting this application and selecting to deinstall supporting objects will completely remove all objects that were created.',
  p_configuration_message => 'You can configure the following attributes of your application.',
  p_install_message=> 'Please confirm that you would like to install this application''s supporting objects.',
  p_install_success_message => 'Your application''s supporting objects have been installed.',
  p_install_failure_message => 'Installation of database objects and seed data has failed.',
  p_deinstall_success_message => 'Deinstallation complete.',
  p_deinstall_script_clob => s,
  p_required_free_kb => 4800,
  p_required_sys_privs => 'CREATE PROCEDURE:CREATE SEQUENCE:CREATE TABLE:CREATE TRIGGER:CREATE TYPE :CREATE VIEW',
  p_required_names_available => 'OEHR_COUNTRIES:OEHR_REGIONS:OEHR_LOCATIONS:OEHR_DEPARTMENTS:OEHR_JOBS:PEHR_EMPLOYEES:OEHR_JOB_HISTORY:OEHR_CUSTOMERS:OEHR_WAREHOUSES:OEHR_ORDER_ITEMS:OEHR_ORDERS:OEHR_INVENTORIES:OEHR_PRODUCT_INFORMATION:OEHR_PRODUCT_DESCRIPTIONS:OEHR_PROMOTIONS:OEHR_CATEGORIES_TAB',
  p_deinstall_message=> '');
end;
 
 
end;
/

--application/deployment/install
prompt  ...application install scripts
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      create_tables.sql '||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
'REM *******************************************************************'||chr(10)||
'REM Create the REGIONS table to hold region information for locations'||chr(10)||
'REM HR.LOCATIONS table has a foreign key to this table.'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_regions'||chr(10)||
'    ( region_id      NUMBER '||chr(10)||
'       CONSTRAINT ';

s:=s||' oehr_region_id_nn NOT NULL '||chr(10)||
'    , region_name    VARCHAR2(25) '||chr(10)||
'    , CONSTRAINT oehr_reg_id_pk PRIMARY KEY (region_id)'||chr(10)||
'    );'||chr(10)||
''||chr(10)||
'REM *******************************************************************'||chr(10)||
'REM Create the COUNTRIES table to hold country information for customers'||chr(10)||
'REM and company locations. '||chr(10)||
'REM OE.CUSTOMERS table and HR.LOCATIONS have a foreign key to this table.'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_count';

s:=s||'ries '||chr(10)||
'    ( country_id      CHAR(2) '||chr(10)||
'       CONSTRAINT  oehr_country_id_nn NOT NULL '||chr(10)||
'    , country_name    VARCHAR2(40) '||chr(10)||
'    , region_id       NUMBER '||chr(10)||
'    , CONSTRAINT     oehr_country_c_id_pk '||chr(10)||
'        	     PRIMARY KEY (country_id) '||chr(10)||
'    , CONSTRAINT oehr_countr_reg_fk'||chr(10)||
'        	 FOREIGN KEY (region_id)'||chr(10)||
'          	  REFERENCES oehr_regions(region_id)'||chr(10)||
'    ) '||chr(10)||
'    ORGANIZATION INDEX; '||chr(10)||
''||chr(10)||
'REM ***********';

s:=s||'********************************************************'||chr(10)||
'REM Create the LOCATIONS table to hold address information for company departments.'||chr(10)||
'REM HR.DEPARTMENTS has a foreign key to this table.'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_locations'||chr(10)||
'    ( location_id    NUMBER(4)'||chr(10)||
'    , street_address VARCHAR2(40)'||chr(10)||
'    , postal_code    VARCHAR2(12)'||chr(10)||
'    , city       VARCHAR2(30)'||chr(10)||
'	CONSTRAINT     oehr_loc_city_nn  NOT NULL'||chr(10)||
'    ,';

s:=s||' state_province VARCHAR2(25)'||chr(10)||
'    , country_id     CHAR(2)'||chr(10)||
'    , CONSTRAINT oehr_loc_id_pk'||chr(10)||
'       		 PRIMARY KEY (location_id)'||chr(10)||
'    , CONSTRAINT oehr_loc_c_id_fk'||chr(10)||
'       		 FOREIGN KEY (country_id)'||chr(10)||
'        	  REFERENCES oehr_countries(country_id) '||chr(10)||
''||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM *******************************************************************'||chr(10)||
'REM Create the DEPARTMENTS table to hold company department information.'||chr(10)||
'';

s:=s||'REM HR.EMPLOYEES and HR.JOB_HISTORY have a foreign key to this table.'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_departments'||chr(10)||
'    ( department_id    NUMBER(4)'||chr(10)||
'    , department_name  VARCHAR2(30)'||chr(10)||
'	CONSTRAINT  oehr_dept_name_nn  NOT NULL'||chr(10)||
'    , manager_id       NUMBER(6)'||chr(10)||
'    , location_id      NUMBER(4)'||chr(10)||
'    , CONSTRAINT oehr_dept_id_pk'||chr(10)||
'       		 PRIMARY KEY (department_id)'||chr(10)||
'    , CONSTRAINT oehr_dept_loc_fk'||chr(10)||
'       		 FOREIGN';

s:=s||' KEY (location_id)'||chr(10)||
'        	  REFERENCES oehr_locations (location_id)'||chr(10)||
''||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM *******************************************************************'||chr(10)||
'REM Create the JOBS table to hold the different names of job roles within the company.'||chr(10)||
'REM HR.EMPLOYEES has a foreign key to this table.'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_jobs'||chr(10)||
'    ( job_id         VARCHAR2(10)'||chr(10)||
'    , job_title      VARCHAR2(35)'||chr(10)||
'	CONSTRAINT     oe';

s:=s||'hr_job_title_nn  NOT NULL'||chr(10)||
'    , min_salary     NUMBER(6)'||chr(10)||
'    , max_salary     NUMBER(6)'||chr(10)||
'    , CONSTRAINT oehr_job_id_pk'||chr(10)||
'      		 PRIMARY KEY(job_id)'||chr(10)||
''||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM *******************************************************************'||chr(10)||
'REM Create the EMPLOYEES table to hold the employee personnel '||chr(10)||
'REM information for the company.'||chr(10)||
'REM HR.EMPLOYEES has a self referencing foreign key to this table.'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'CRE';

s:=s||'ATE TABLE oehr_employees'||chr(10)||
'    ( employee_id    NUMBER(6)'||chr(10)||
'    , first_name     VARCHAR2(20)'||chr(10)||
'    , last_name      VARCHAR2(25)'||chr(10)||
'	 CONSTRAINT     oehr_emp_last_name_nn  NOT NULL'||chr(10)||
'    , email          VARCHAR2(25)'||chr(10)||
'	CONSTRAINT     oehr_emp_email_nn  NOT NULL'||chr(10)||
'    , phone_number   VARCHAR2(20)'||chr(10)||
'    , hire_date      DATE'||chr(10)||
'	CONSTRAINT     oehr_emp_hire_date_nn  NOT NULL'||chr(10)||
'    , job_id         VARCHAR2(10)'||chr(10)||
'	CONSTR';

s:=s||'AINT     oehr_emp_job_nn  NOT NULL'||chr(10)||
'    , salary         NUMBER(8,2)'||chr(10)||
'    , commission_pct NUMBER(2,2)'||chr(10)||
'    , manager_id     NUMBER(6)'||chr(10)||
'    , department_id  NUMBER(4)'||chr(10)||
'    , CONSTRAINT     oehr_emp_salary_min'||chr(10)||
'                     CHECK (salary > 0) '||chr(10)||
'    , CONSTRAINT     oehr_emp_email_uk'||chr(10)||
'                     UNIQUE (email)'||chr(10)||
'    , CONSTRAINT     oehr_emp_emp_id_pk'||chr(10)||
'                     PRIMARY KEY (employ';

s:=s||'ee_id)'||chr(10)||
'    , CONSTRAINT     oehr_emp_dept_fk'||chr(10)||
'                     FOREIGN KEY (department_id)'||chr(10)||
'                      REFERENCES oehr_departments'||chr(10)||
'    , CONSTRAINT     oehr_emp_job_fk'||chr(10)||
'                     FOREIGN KEY (job_id)'||chr(10)||
'                      REFERENCES oehr_jobs (job_id)'||chr(10)||
'    , CONSTRAINT     oehr_emp_manager_fk'||chr(10)||
'                     FOREIGN KEY (manager_id)'||chr(10)||
'                      REFERENCES oehr_';

s:=s||'employees'||chr(10)||
''||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM ******************************************************'||chr(10)||
'REM Add a new foreign key constraint to Departments that references '||chr(10)||
'REM Employees table'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_departments'||chr(10)||
'ADD ( CONSTRAINT oehr_dept_mgr_fk'||chr(10)||
'      		 FOREIGN KEY (manager_id)'||chr(10)||
'      		  REFERENCES oehr_employees (employee_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
''||chr(10)||
'REM *******************************************************************'||chr(10)||
'RE';

s:=s||'M Create the JOB_HISTORY table to hold the history of jobs that '||chr(10)||
'REM employees have held in the past.'||chr(10)||
'REM HR.JOBS, HR_DEPARTMENTS, and HR.EMPLOYEES have a foreign key to this table.'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_job_history'||chr(10)||
'    ( employee_id   NUMBER(6)'||chr(10)||
'	 CONSTRAINT    oehr_jhist_employee_nn  NOT NULL'||chr(10)||
'    , start_date    DATE'||chr(10)||
'	CONSTRAINT    oehr_jhist_start_date_nn  NOT NULL'||chr(10)||
'    , end_date      DATE'||chr(10)||
'	CONST';

s:=s||'RAINT    oehr_jhist_end_date_nn  NOT NULL'||chr(10)||
'    , job_id        VARCHAR2(10)'||chr(10)||
'	CONSTRAINT    oehr_jhist_job_nn  NOT NULL'||chr(10)||
'    , department_id NUMBER(4)'||chr(10)||
'    , CONSTRAINT    oehr_jhist_date_interval'||chr(10)||
'                    CHECK (end_date >= start_date)'||chr(10)||
'    , CONSTRAINT oehr_jhist_emp_id_st_date_pk'||chr(10)||
'      PRIMARY KEY (employee_id, start_date)'||chr(10)||
'    , CONSTRAINT     oehr_jhist_job_fk'||chr(10)||
'                     FOREIG';

s:=s||'N KEY (job_id)'||chr(10)||
'                     REFERENCES oehr_jobs'||chr(10)||
'    , CONSTRAINT     oehr_jhist_emp_fk'||chr(10)||
'                     FOREIGN KEY (employee_id)'||chr(10)||
'                     REFERENCES oehr_employees'||chr(10)||
'    , CONSTRAINT     oehr_jhist_dept_fk'||chr(10)||
'                     FOREIGN KEY (department_id)'||chr(10)||
'                     REFERENCES oehr_departments'||chr(10)||
''||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
''||chr(10)||
'-- ==========================================================';

s:=s||'============'||chr(10)||
'-- Type definitions'||chr(10)||
'-- ======================================================================'||chr(10)||
''||chr(10)||
'CREATE TYPE oehr_cust_address_typ'||chr(10)||
'  AS OBJECT'||chr(10)||
'    ( street_address     VARCHAR2(40)'||chr(10)||
'    , postal_code        VARCHAR2(10)'||chr(10)||
'    , city               VARCHAR2(30)'||chr(10)||
'    , state_province     VARCHAR2(10)'||chr(10)||
'    , country_id         CHAR(2)'||chr(10)||
'    );'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'REM ===============================================';

s:=s||'============================'||chr(10)||
'REM Create phone_list_typ varray to be varray column in customers table.'||chr(10)||
'REM ==========================================================================='||chr(10)||
''||chr(10)||
'CREATE TYPE oehr_phone_list_typ'||chr(10)||
'  AS VARRAY(5) OF VARCHAR2(25);'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create customers table.'||chr(10)||
'REM The cust_geo_location column will beco';

s:=s||'me MDSYS.SDO_GEOMETRY (spatial) '||chr(10)||
'REM datatype when appropriate scripts and data are available.'||chr(10)||
'REM ==========================================================================='||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_customers'||chr(10)||
'    ( customer_id        NUMBER(6)     '||chr(10)||
'    , cust_first_name    VARCHAR2(20) CONSTRAINT cust_fname_nn NOT NULL'||chr(10)||
'    , cust_last_name     VARCHAR2(20) CONSTRAINT cust_lname_nn NOT NULL'||chr(10)||
'    , cust_';

s:=s||'address       oehr_cust_address_typ'||chr(10)||
'    , phone_numbers      oehr_phone_list_typ'||chr(10)||
'    , nls_language       VARCHAR2(3)'||chr(10)||
'    , nls_territory      VARCHAR2(30)'||chr(10)||
'    , credit_limit       NUMBER(9,2)'||chr(10)||
'    , cust_email         VARCHAR2(30)'||chr(10)||
'    , account_mgr_id     NUMBER(6)'||chr(10)||
'    , cust_geo_location  MDSYS.SDO_GEOMETRY'||chr(10)||
'    , CONSTRAINT         oehr_cust_cl_max'||chr(10)||
'                         CHECK (credit_limit <= ';

s:=s||'5000)'||chr(10)||
'    , CONSTRAINT         oehr_customer_id_min'||chr(10)||
'                         CHECK (customer_id > 0)'||chr(10)||
'    , CONSTRAINT oehr_customers_pk'||chr(10)||
'      PRIMARY KEY (customer_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create warehouses table; '||chr(10)||
'REM  includes spatial data column wh_geo_location and'||chr(10)||
'REM  XML type warehouse_spec (was bug b41)'||chr(10)||
'REM ===========';

s:=s||'================================================================'||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_warehouses'||chr(10)||
'    ( warehouse_id       NUMBER(3) '||chr(10)||
'    , warehouse_spec     SYS.XMLTYPE'||chr(10)||
'    , warehouse_name     VARCHAR2(35)'||chr(10)||
'    , location_id        NUMBER(4)'||chr(10)||
'    , wh_geo_location    MDSYS.SDO_GEOMETRY'||chr(10)||
'    , CONSTRAINT oehr_warehouses_pk PRIMARY KEY (warehouse_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM =======================================';

s:=s||'===================================='||chr(10)||
'REM Create table order_items.'||chr(10)||
'REM ==========================================================================='||chr(10)||
'	'||chr(10)||
'CREATE TABLE oehr_order_items'||chr(10)||
'    ( order_id           NUMBER(12) '||chr(10)||
'    , line_item_id       NUMBER(3)  NOT NULL'||chr(10)||
'    , product_id         NUMBER(6)  NOT NULL'||chr(10)||
'    , unit_price         NUMBER(8,2)'||chr(10)||
'    , quantity           NUMBER(8)'||chr(10)||
'    , order_item_id   ';

s:=s||'   NUMBER(12) '||chr(10)||
'    , CONSTRAINT oehr_order_items_pk PRIMARY KEY (order_item_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create table orders, which includes a TIMESTAMP column and a check'||chr(10)||
'REM constraint.'||chr(10)||
'REM ==========================================================================='||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_orders'||chr(10)||
'    ( order_id           NUMBER(12)'||chr(10)||
'  ';

s:=s||'  , order_date         TIMESTAMP WITH LOCAL TIME ZONE'||chr(10)||
'      CONSTRAINT order_date_nn NOT NULL'||chr(10)||
'    , order_mode         VARCHAR2(8)'||chr(10)||
'    , customer_id        NUMBER(6) CONSTRAINT oehr_order_customer_id_nn NOT NULL'||chr(10)||
'    , order_status       NUMBER(2)'||chr(10)||
'    , order_total        NUMBER(8,2)'||chr(10)||
'    , sales_rep_id       NUMBER(6)'||chr(10)||
'    , promotion_id       NUMBER(6)'||chr(10)||
'    , CONSTRAINT         oehr_order_mode_lov'||chr(10)||
' ';

s:=s||'                        CHECK (order_mode in (''direct'',''online''))'||chr(10)||
'    , constraint         oehr_order_total_min'||chr(10)||
'                         check (order_total >= 0)'||chr(10)||
'    , CONSTRAINT oehr_order_pk PRIMARY KEY (order_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create inventories table, which contains a concatenated primary key.'||chr(10)||
'REM  Note that PK is o';

s:=s||'nly enable after supporting non-unique index is created'||chr(10)||
'REM ==========================================================================='||chr(10)||
'    '||chr(10)||
'CREATE TABLE oehr_inventories'||chr(10)||
'  ( product_id         NUMBER(6)'||chr(10)||
'  , warehouse_id       NUMBER(3) CONSTRAINT oehr_inventory_warehouse_id_nn NOT NULL'||chr(10)||
'  , quantity_on_hand   NUMBER(8)'||chr(10)||
'	CONSTRAINT oehr_inventory_qoh_nn NOT NULL'||chr(10)||
'  , CONSTRAINT oehr_inventory_pk '||chr(10)||
'	P';

s:=s||'RIMARY KEY (product_id, warehouse_id) DISABLE NOVALIDATE'||chr(10)||
'  ) ;'||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create table product_information, which contains an INTERVAL datatype and'||chr(10)||
'REM a CHECK ... IN constraint.'||chr(10)||
'REM ==========================================================================='||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_product_information'||chr(10)||
'    ( product_id          NU';

s:=s||'MBER(6)'||chr(10)||
'    , product_name        VARCHAR2(50)'||chr(10)||
'    , product_description VARCHAR2(2000)'||chr(10)||
'    , category_id         NUMBER(2)'||chr(10)||
'    , weight_class        NUMBER(1)'||chr(10)||
'    , warranty_period     INTERVAL YEAR TO MONTH'||chr(10)||
'    , supplier_id         NUMBER(6)'||chr(10)||
'    , product_status      VARCHAR2(20)'||chr(10)||
'    , list_price          NUMBER(8,2)'||chr(10)||
'    , min_price           NUMBER(8,2)'||chr(10)||
'    , catalog_url         VARCHAR2(50)'||chr(10)||
' ';

s:=s||'   , CONSTRAINT          oehr_product_status_lov'||chr(10)||
'                          CHECK (product_status in (''orderable'''||chr(10)||
'                                                  ,''planned'''||chr(10)||
'                                                  ,''under development'''||chr(10)||
'                                                  ,''obsolete'')'||chr(10)||
'                               )'||chr(10)||
'    , CONSTRAINT oehr_product_info_pk PRIMARY KEY (product_';

s:=s||'id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create table product_descriptions, which contains NVARCHAR2 columns for'||chr(10)||
'REM NLS-language information.'||chr(10)||
'REM ==========================================================================='||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_product_descriptions'||chr(10)||
'    ( product_id             NUMBER(6)'||chr(10)||
'    , language_id            VARCHAR2(3)'||chr(10)||
' ';

s:=s||'   , translated_name        NVARCHAR2(50)'||chr(10)||
'CONSTRAINT oehr_translated_name_nn NOT NULL'||chr(10)||
'    , translated_description NVARCHAR2(2000)'||chr(10)||
'CONSTRAINT oehr_translated_desc_nn NOT NULL'||chr(10)||
'    , CONSTRAINT oehr_prod_desc_pk '||chr(10)||
'	PRIMARY KEY (product_id, language_id)'||chr(10)||
'    );'||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create table promotions for OWB demos, congruent with SH s';

s:=s||'chema'||chr(10)||
'REM ==========================================================================='||chr(10)||
'   '||chr(10)||
'CREATE TABLE oehr_promotions ('||chr(10)||
'  promo_id NUMBER(6),'||chr(10)||
'  promo_name VARCHAR2(20),'||chr(10)||
'  CONSTRAINT oehr_promo_id_pk PRIMARY KEY (promo_id));'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'REM Create the Online Catalog ( OC ) subschema'||chr(10)||
''||chr(10)||
'-- ======================================================================'||chr(10)||
'-- Type definitions'||chr(10)||
'-- ===========================';

s:=s||'==========================================='||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE TYPE oehr_category_typ'||chr(10)||
' AS OBJECT '||chr(10)||
'    ( category_name           VARCHAR2(50) '||chr(10)||
'    , category_description    VARCHAR2(1000) '||chr(10)||
'    , category_id             NUMBER(2) '||chr(10)||
'    , NOT instantiable '||chr(10)||
'      MEMBER FUNCTION category_describe RETURN VARCHAR2 '||chr(10)||
'      ) '||chr(10)||
'  NOT INSTANTIABLE NOT FINAL; '||chr(10)||
'/ '||chr(10)||
'CREATE TYPE oehr_subcategory_ref_list_typ'||chr(10)||
' AS TABLE OF RE';

s:=s||'F oehr_category_typ; '||chr(10)||
'/ '||chr(10)||
'CREATE TYPE oehr_product_ref_list_typ'||chr(10)||
' AS TABLE OF number(6); '||chr(10)||
'/ '||chr(10)||
'CREATE TYPE oehr_leaf_category_typ'||chr(10)||
' UNDER oehr_category_typ '||chr(10)||
'    ( '||chr(10)||
'    product_ref_list    oehr_product_ref_list_typ '||chr(10)||
'    , OVERRIDING MEMBER FUNCTION  category_describe RETURN VARCHAR2 '||chr(10)||
'    ); '||chr(10)||
'/ '||chr(10)||
'CREATE TYPE BODY oehr_leaf_category_typ AS '||chr(10)||
'    OVERRIDING MEMBER FUNCTION  category_describe RETURN VARCHAR2 ';

s:=s||'IS '||chr(10)||
'    BEGIN '||chr(10)||
'       RETURN  ''leaf_category_typ''; '||chr(10)||
'    END; '||chr(10)||
'   END; '||chr(10)||
'/ '||chr(10)||
'CREATE TYPE oehr_composite_category_typ'||chr(10)||
' UNDER oehr_category_typ '||chr(10)||
'      ( '||chr(10)||
'    subcategory_ref_list oehr_subcategory_ref_list_typ '||chr(10)||
'      , OVERRIDING MEMBER FUNCTION  category_describe RETURN VARCHAR2 '||chr(10)||
'      ) '||chr(10)||
'  NOT FINAL; '||chr(10)||
'/ '||chr(10)||
'CREATE TYPE BODY oehr_composite_category_typ  AS '||chr(10)||
'    OVERRIDING MEMBER FUNCTION category_describe';

s:=s||' RETURN VARCHAR2 IS '||chr(10)||
'    BEGIN '||chr(10)||
'      RETURN ''composite_category_typ''; '||chr(10)||
'    END; '||chr(10)||
'   END; '||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_catalog_typ'||chr(10)||
' UNDER oehr_composite_category_typ '||chr(10)||
'      ( '||chr(10)||
'    MEMBER FUNCTION getCatalogName RETURN VARCHAR2 '||chr(10)||
'       , OVERRIDING MEMBER FUNCTION category_describe RETURN VARCHAR2 '||chr(10)||
'      ); '||chr(10)||
'/ '||chr(10)||
'CREATE TYPE BODY oehr_catalog_typ AS'||chr(10)||
'  OVERRIDING MEMBER FUNCTION category_describe RETURN varcha';

s:=s||'r2 IS'||chr(10)||
'  BEGIN'||chr(10)||
'    RETURN ''catalog_typ'';'||chr(10)||
'  END;'||chr(10)||
'  MEMBER FUNCTION getCatalogName RETURN varchar2 IS'||chr(10)||
'  BEGIN'||chr(10)||
'    -- Return the category name from the supertype'||chr(10)||
'    RETURN self.category_name;'||chr(10)||
'  END;'||chr(10)||
'END;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'CREATE TYPE oehr_warehouse_typ'||chr(10)||
' AS OBJECT'||chr(10)||
'    ( warehouse_id       NUMBER(3)'||chr(10)||
'    , warehouse_name     VARCHAR2(35)'||chr(10)||
'    , location_id        NUMBER(4)'||chr(10)||
'    ) ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_inventory_typ'||chr(10)||
' AS O';

s:=s||'BJECT'||chr(10)||
'    ( product_id          NUMBER(6) '||chr(10)||
'    , warehouse           oehr_warehouse_typ'||chr(10)||
'    , quantity_on_hand    NUMBER(8)'||chr(10)||
'    ) ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_inventory_list_typ'||chr(10)||
' AS TABLE OF oehr_inventory_typ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_product_information_typ'||chr(10)||
' AS OBJECT'||chr(10)||
'    ( product_id           NUMBER(6)'||chr(10)||
'    , product_name         VARCHAR2(50)'||chr(10)||
'    , product_description  VARCHAR2(2000)'||chr(10)||
'    , category_id       ';

s:=s||'   NUMBER(2)'||chr(10)||
'    , weight_class         NUMBER(1)'||chr(10)||
'    , warranty_period      INTERVAL YEAR(2) TO MONTH'||chr(10)||
'    , supplier_id          NUMBER(6)'||chr(10)||
'    , product_status       VARCHAR2(20)'||chr(10)||
'    , list_price           NUMBER(8,2)'||chr(10)||
'    , min_price            NUMBER(8,2)'||chr(10)||
'    , catalog_url          VARCHAR2(50)'||chr(10)||
'    , inventory_list       oehr_inventory_list_typ'||chr(10)||
'    ) ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_order_item_typ'||chr(10)||
' AS OBJEC';

s:=s||'T'||chr(10)||
'    ( order_id           NUMBER(12)'||chr(10)||
'    , line_item_id       NUMBER(3)'||chr(10)||
'    , unit_price         NUMBER(8,2)'||chr(10)||
'    , quantity           NUMBER(8)'||chr(10)||
'    , product_ref  REF   oehr_product_information_typ'||chr(10)||
'    ) ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_order_item_list_typ'||chr(10)||
' AS TABLE OF oehr_order_item_typ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_customer_typ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_order_typ'||chr(10)||
' AS OBJECT'||chr(10)||
'    ( order_id           NUMBER(12)'||chr(10)||
'    , order';

s:=s||'_mode         VARCHAR2(8)'||chr(10)||
'    , customer_ref  REF  oehr_customer_typ'||chr(10)||
'    , order_status       NUMBER(2)'||chr(10)||
'    , order_total        NUMBER(8,2)'||chr(10)||
'    , sales_rep_id       NUMBER(6)'||chr(10)||
'    , order_item_list    oehr_order_item_list_typ'||chr(10)||
'    ) ;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_order_list_typ'||chr(10)||
' AS TABLE OF oehr_order_typ;'||chr(10)||
'/'||chr(10)||
'CREATE OR REPLACE TYPE oehr_customer_typ'||chr(10)||
' AS OBJECT'||chr(10)||
'    ( customer_id        NUMBER(6)'||chr(10)||
'    , cust_fir';

s:=s||'st_name    VARCHAR2(20)'||chr(10)||
'    , cust_last_name     VARCHAR2(20)'||chr(10)||
'    , cust_address       oehr_cust_address_typ'||chr(10)||
'    , phone_numbers      oehr_phone_list_typ'||chr(10)||
'    , nls_language       VARCHAR2(3)'||chr(10)||
'    , nls_territory      VARCHAR2(30)'||chr(10)||
'    , credit_limit       NUMBER(9,2)'||chr(10)||
'    , cust_email         VARCHAR2(30)'||chr(10)||
'    , cust_orders        oehr_order_list_typ'||chr(10)||
'    ) '||chr(10)||
'NOT FINAL;'||chr(10)||
'/'||chr(10)||
'CREATE TYPE oehr_corporate_cust';

s:=s||'omer_typ'||chr(10)||
' UNDER oehr_customer_typ '||chr(10)||
'      ( account_mgr_id     NUMBER(6) '||chr(10)||
'      ); '||chr(10)||
'/ '||chr(10)||
''||chr(10)||
'-- ======================================================================'||chr(10)||
'-- Table definitions'||chr(10)||
'-- ======================================================================'||chr(10)||
''||chr(10)||
'CREATE TABLE oehr_categories_tab OF oehr_category_typ '||chr(10)||
'    ( category_id PRIMARY KEY)'||chr(10)||
'  NESTED TABLE TREAT '||chr(10)||
' (OBJECT_VALUE AS oehr_leaf_categor';

s:=s||'y_typ).product_ref_list '||chr(10)||
'    STORE AS oehr_prod_ref_list_ntab '||chr(10)||
'  NESTED TABLE TREAT '||chr(10)||
' (OBJECT_VALUE AS oehr_composite_category_typ).subcategory_ref_list '||chr(10)||
'    STORE AS oehr_subcat_ref_list_ntab;'||chr(10)||
''||chr(10)||
'COMMIT;';

wwv_flow_api.create_install_script(
  p_id => 313864925390570538 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'create tables',
  p_sequence=> 10,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      create_procedure.sql'||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
'REM procedure and statement trigger to allow dmls during business hours:'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE PROCEDURE oehr_secure_dml'||chr(10)||
'IS'||chr(10)||
'BEGIN'||chr(10)||
'  IF TO_CHAR (SYSDATE, ''HH24:MI'') NOT BETWEEN ''08:00'' AND ''18:00'''||chr(10)||
'        OR TO_CHAR (SYSDATE, ''DY'') IN (''SAT'', ''SUN'') THEN'||chr(10)||
'	RAISE_APPLICATION_E';

s:=s||'RROR (-20205, '||chr(10)||
'		''You may only make changes during normal office hours'');'||chr(10)||
'  END IF;'||chr(10)||
'END oehr_secure_dml;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE FUNCTION oehr_get_phone_number_f'||chr(10)||
'  (p_in INTEGER, p_phonelist oehr_phone_list_typ) '||chr(10)||
'RETURN VARCHAR2 AS'||chr(10)||
'  TYPE phone_list IS VARRAY(5) OF VARCHAR2(25);'||chr(10)||
'  phone_out varchar2(25) := null;'||chr(10)||
'  v_size INTEGER;'||chr(10)||
'BEGIN'||chr(10)||
'    IF p_phonelist.FIRST IS NULL OR'||chr(10)||
'       p_in > (p_phonelist.LA';

s:=s||'ST + 1) - p_phonelist.FIRST THEN'||chr(10)||
'      RETURN phone_out;'||chr(10)||
'    ELSE'||chr(10)||
'      phone_out := p_phonelist(p_in);'||chr(10)||
'      RETURN phone_out;'||chr(10)||
'    END IF;'||chr(10)||
'END;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'REM **************************************************************************'||chr(10)||
'REM procedure to add a row to the JOB_HISTORY table and row trigger '||chr(10)||
'REM to call the procedure when data is updated in the job_id or '||chr(10)||
'REM department_id columns in the EMPLOY';

s:=s||'EES table:'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE PROCEDURE oehr_add_job_history'||chr(10)||
'  (  p_emp_id          oehr_job_history.employee_id%type'||chr(10)||
'   , p_start_date      oehr_job_history.start_date%type'||chr(10)||
'   , p_end_date        oehr_job_history.end_date%type'||chr(10)||
'   , p_job_id          oehr_job_history.job_id%type'||chr(10)||
'   , p_department_id   oehr_job_history.department_id%type '||chr(10)||
'   )'||chr(10)||
'IS'||chr(10)||
'BEGIN'||chr(10)||
'  INSERT INTO oehr_job_history (employee_id, s';

s:=s||'tart_date, end_date, '||chr(10)||
'                           job_id, department_id)'||chr(10)||
'    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);'||chr(10)||
'END oehr_add_job_history;'||chr(10)||
'/';

wwv_flow_api.create_install_script(
  p_id => 313865810713592546 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'create procedures',
  p_sequence=> 20,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      create_views.sql'||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
''||chr(10)||
'REM *******************************************************************'||chr(10)||
'REM Create the EMP_DETAILS_VIEW that joins the employees, jobs, '||chr(10)||
'REM departments, jobs, countries, and locations table to provide details'||chr(10)||
'REM about employees.'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_emp_details_vi';

s:=s||'ew'||chr(10)||
'  (employee_id,'||chr(10)||
'   job_id,'||chr(10)||
'   manager_id,'||chr(10)||
'   department_id,'||chr(10)||
'   location_id,'||chr(10)||
'   country_id,'||chr(10)||
'   first_name,'||chr(10)||
'   last_name,'||chr(10)||
'   salary,'||chr(10)||
'   commission_pct,'||chr(10)||
'   department_name,'||chr(10)||
'   job_title,'||chr(10)||
'   city,'||chr(10)||
'   state_province,'||chr(10)||
'   country_name,'||chr(10)||
'   region_name)'||chr(10)||
'AS SELECT'||chr(10)||
'  e.employee_id, '||chr(10)||
'  e.job_id, '||chr(10)||
'  e.manager_id, '||chr(10)||
'  e.department_id,'||chr(10)||
'  d.location_id,'||chr(10)||
'  l.country_id,'||chr(10)||
'  e.first_name,'||chr(10)||
'  e.last_name,'||chr(10)||
'  e.salary,';

s:=s||''||chr(10)||
'  e.commission_pct,'||chr(10)||
'  d.department_name,'||chr(10)||
'  j.job_title,'||chr(10)||
'  l.city,'||chr(10)||
'  l.state_province,'||chr(10)||
'  c.country_name,'||chr(10)||
'  r.region_name'||chr(10)||
'FROM'||chr(10)||
'  oehr_employees e,'||chr(10)||
'  oehr_departments d,'||chr(10)||
'  oehr_jobs j,'||chr(10)||
'  oehr_locations l,'||chr(10)||
'  oehr_countries c,'||chr(10)||
'  oehr_regions r'||chr(10)||
'WHERE e.department_id = d.department_id'||chr(10)||
'  AND d.location_id = l.location_id'||chr(10)||
'  AND l.country_id = c.country_id'||chr(10)||
'  AND c.region_id = r.region_id'||chr(10)||
'  AND j.job_id = e';

s:=s||'.job_id '||chr(10)||
'WITH READ ONLY;'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_products'||chr(10)||
'AS'||chr(10)||
'SELECT i.product_id'||chr(10)||
',      d.language_id'||chr(10)||
',      CASE WHEN d.language_id IS NOT NULL'||chr(10)||
'            THEN d.translated_name'||chr(10)||
'            ELSE TRANSLATE(i.product_name USING NCHAR_CS)'||chr(10)||
'       END    AS product_name'||chr(10)||
',      i.category_id'||chr(10)||
',      CASE WHEN d.language_id IS NOT NULL'||chr(10)||
'            THEN d.translated_description'||chr(10)||
'            ELSE TRA';

s:=s||'NSLATE(i.product_description USING NCHAR_CS)'||chr(10)||
'       END    AS product_description'||chr(10)||
',      i.weight_class'||chr(10)||
',      i.warranty_period'||chr(10)||
',      i.supplier_id'||chr(10)||
',      i.product_status'||chr(10)||
',      i.list_price'||chr(10)||
',      i.min_price'||chr(10)||
',      i.catalog_url'||chr(10)||
'FROM   oehr_product_information  i'||chr(10)||
',      oehr_product_descriptions d'||chr(10)||
'WHERE  d.product_id  (+) = i.product_id'||chr(10)||
'AND    d.language_id (+) = sys_context(''USERENV'',''LANG'')';

s:=s||';'||chr(10)||
''||chr(10)||
'REM ======================================================='||chr(10)||
'REM Create some inventory views'||chr(10)||
'REM ======================================================='||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_sydney_inventory'||chr(10)||
'AS'||chr(10)||
'SELECT p.product_id'||chr(10)||
',      p.product_name'||chr(10)||
',      i.quantity_on_hand'||chr(10)||
'FROM   oehr_inventories i'||chr(10)||
',      oehr_warehouses  w'||chr(10)||
',      oehr_products    p  '||chr(10)||
'WHERE  p.product_id = i.product_id'||chr(10)||
'AND    i.ware';

s:=s||'house_id = w.warehouse_id'||chr(10)||
'AND    w.warehouse_name = ''Sydney'';'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_bombay_inventory'||chr(10)||
'AS'||chr(10)||
'SELECT p.product_id'||chr(10)||
',      p.product_name'||chr(10)||
',      i.quantity_on_hand'||chr(10)||
'FROM   oehr_inventories i'||chr(10)||
',      oehr_warehouses  w'||chr(10)||
',      oehr_products    p   '||chr(10)||
'WHERE  p.product_id = i.product_id'||chr(10)||
'AND    i.warehouse_id = w.warehouse_id'||chr(10)||
'AND    w.warehouse_name = ''Bombay'';'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_t';

s:=s||'oronto_inventory'||chr(10)||
'AS'||chr(10)||
'SELECT p.product_id'||chr(10)||
',      p.product_name'||chr(10)||
',      i.quantity_on_hand'||chr(10)||
'FROM   oehr_inventories i'||chr(10)||
',      oehr_warehouses  w'||chr(10)||
',      oehr_products    p'||chr(10)||
'WHERE  p.product_id = i.product_id'||chr(10)||
'AND    i.warehouse_id = w.warehouse_id'||chr(10)||
'AND    w.warehouse_name = ''Toronto'';'||chr(10)||
''||chr(10)||
'REM ======================================================='||chr(10)||
'REM Create product_prices view of product_information'||chr(10)||
'REM colu';

s:=s||'mns to show view with a GROUP BY clause.'||chr(10)||
'REM ======================================================='||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_product_prices'||chr(10)||
'AS'||chr(10)||
'SELECT category_id'||chr(10)||
',      COUNT(*)        as "#_OF_PRODUCTS"'||chr(10)||
',      MIN(list_price) as low_price'||chr(10)||
',      MAX(list_price) as high_price'||chr(10)||
'FROM   oehr_product_information'||chr(10)||
'GROUP BY category_id;'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_account_managers AS'||chr(10)||
'SELECT		c.accou';

s:=s||'nt_mgr_id 		ACCT_MGR,'||chr(10)||
'		cr.region_id 			REGION, '||chr(10)||
'		c.cust_address.country_id 	COUNTRY, '||chr(10)||
'		c.cust_address.state_province 	PROVINCE, '||chr(10)||
'		count(*) 			NUM_CUSTOMERS'||chr(10)||
'FROM		oehr_customers c, oehr_countries cr'||chr(10)||
'WHERE		c.cust_address.country_id = cr.country_id'||chr(10)||
'GROUP BY ROLLUP (c.account_mgr_id, '||chr(10)||
'		 cr.region_id, '||chr(10)||
'		 c.cust_address.country_id, '||chr(10)||
'		 c.cust_address.state_province);'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr';

s:=s||'_customers_view'||chr(10)||
'AS SELECT '||chr(10)||
'  c.customer_id,'||chr(10)||
'  c.cust_first_name,'||chr(10)||
'  c.cust_last_name,'||chr(10)||
'  c.cust_address.street_address street_address,'||chr(10)||
'  c.cust_address.postal_code postal_code,'||chr(10)||
'  c.cust_address.city city,'||chr(10)||
'  c.cust_address.state_province state_province,'||chr(10)||
'  co.country_id,'||chr(10)||
'  co.country_name,'||chr(10)||
'  co.region_id,'||chr(10)||
'  c.nls_language,'||chr(10)||
'  c.nls_territory,'||chr(10)||
'  c.credit_limit,'||chr(10)||
'  c.cust_email,'||chr(10)||
'  substr(oehr_get_phone_nu';

s:=s||'mber_f(1,phone_numbers),1,25) Primary_Phone_number,'||chr(10)||
'  substr(oehr_get_phone_number_f(2,phone_numbers),1,25) Phone_number_2,'||chr(10)||
'  substr(oehr_get_phone_number_f(3,phone_numbers),1,25) Phone_number_3,'||chr(10)||
'  substr(oehr_get_phone_number_f(4,phone_numbers),1,25) Phone_number_4,'||chr(10)||
'  substr(oehr_get_phone_number_f(5,phone_numbers),1,25) Phone_number_5,'||chr(10)||
'  c.account_mgr_id,'||chr(10)||
'  c.cust_geo_location.sdo_gtype location';

s:=s||'_gtype,'||chr(10)||
'  c.cust_geo_location.sdo_srid location_srid,'||chr(10)||
'  c.cust_geo_location.sdo_point.x location_x,'||chr(10)||
'  c.cust_geo_location.sdo_point.y location_y,'||chr(10)||
'  c.cust_geo_location.sdo_point.z location_z'||chr(10)||
'FROM '||chr(10)||
'  oehr_countries co, '||chr(10)||
'  oehr_customers c'||chr(10)||
'WHERE '||chr(10)||
'  c.cust_address.country_id = co.country_id(+) '||chr(10)||
';'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_orders_view'||chr(10)||
'As '||chr(10)||
'select order_id,'||chr(10)||
'  to_date(to_char(order_date,''DD-MON-YY HH:';

s:=s||'MI:SS''),''DD-MON-YY HH:MI:SS'')    order_date,'||chr(10)||
'order_mode,'||chr(10)||
'customer_id,'||chr(10)||
'order_status,'||chr(10)||
'order_total,'||chr(10)||
'sales_rep_id,'||chr(10)||
'promotion_id'||chr(10)||
'from oehr_orders;'||chr(10)||
''||chr(10)||
''||chr(10)||
'-- ========================================================'||chr(10)||
'-- View definitions'||chr(10)||
'-- ========================================================'||chr(10)||
'--'||chr(10)||
'-- oc_inventories'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_oc_inventories OF oehr_inventory_typ '||chr(10)||
' WITH OBJECT OID (product_id';

s:=s||')'||chr(10)||
' AS SELECT i.product_id, '||chr(10)||
'           oehr_warehouse_typ(w.warehouse_id, w.warehouse_name, w.location_id),'||chr(10)||
'           i.quantity_on_hand'||chr(10)||
'    FROM oehr_inventories i, oehr_warehouses w'||chr(10)||
'    WHERE i.warehouse_id=w.warehouse_id;'||chr(10)||
''||chr(10)||
'-- oc_product_information'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_oc_product_information OF oehr_product_information_typ '||chr(10)||
' WITH OBJECT OID (product_id)'||chr(10)||
' AS SELECT p.product_id, p.produ';

s:=s||'ct_name, p.product_description, p.category_id,'||chr(10)||
'           p.weight_class, p.warranty_period, p.supplier_id, p.product_status,'||chr(10)||
'           p.list_price, p.min_price, p.catalog_url,'||chr(10)||
'           CAST(MULTISET(SELECT i.product_id,i.warehouse,i.quantity_on_hand'||chr(10)||
'                         FROM oehr_oc_inventories i'||chr(10)||
'                         WHERE p.product_id=i.product_id)'||chr(10)||
'                AS oehr_inventory_l';

s:=s||'ist_typ)'||chr(10)||
'    FROM oehr_product_information p;'||chr(10)||
''||chr(10)||
'-- oc_customers: Multi-level collections'||chr(10)||
'--'||chr(10)||
'-- The view is created twice so that it can make a reference to itself. The'||chr(10)||
'-- first CREATE creates the view with a NULL in place of the circular '||chr(10)||
'-- reference. The second CREATE creates the view WITH the circular reference,'||chr(10)||
'-- which works this time because now the view already exists.'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIE';

s:=s||'W oehr_oc_customers of oehr_customer_typ '||chr(10)||
' WITH OBJECT OID (customer_id)'||chr(10)||
' AS SELECT c.customer_id, c.cust_first_name, c.cust_last_name, c.cust_address,'||chr(10)||
'           c.phone_numbers,c.nls_language,c.nls_territory,c.credit_limit,'||chr(10)||
'           c.cust_email,'||chr(10)||
'           CAST(MULTISET(SELECT o.order_id, o.order_mode,'||chr(10)||
'                               NULL,'||chr(10)||
'                               o.order_status,'||chr(10)||
'       ';

s:=s||'                        o.order_total,o.sales_rep_id,'||chr(10)||
'                               CAST(MULTISET(SELECT l.order_id,l.line_item_id,'||chr(10)||
'                                                    l.unit_price,l.quantity,'||chr(10)||
'                                             make_ref(oehr_oc_product_information,'||chr(10)||
'                                                      l.product_id)'||chr(10)||
'                                       ';

s:=s||'      FROM oehr_order_items l'||chr(10)||
'                                             WHERE o.order_id = l.order_id)'||chr(10)||
'                                    AS oehr_order_item_list_typ)'||chr(10)||
'                         FROM oehr_orders o'||chr(10)||
'                         WHERE c.customer_id = o.customer_id)'||chr(10)||
'                AS oehr_order_list_typ)'||chr(10)||
'     FROM oehr_customers c;'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_oc_customers OF oehr_cust';

s:=s||'omer_typ '||chr(10)||
' WITH OBJECT OID (customer_id)'||chr(10)||
' AS SELECT c.customer_id, c.cust_first_name, c.cust_last_name, c.cust_address,'||chr(10)||
'           c.phone_numbers,c.nls_language,c.nls_territory,c.credit_limit,'||chr(10)||
'           c.cust_email,'||chr(10)||
'           CAST(MULTISET(SELECT o.order_id, o.order_mode,'||chr(10)||
'                               MAKE_REF(oehr_oc_customers,o.customer_id),'||chr(10)||
'                               o.order_status,'||chr(10)||
'  ';

s:=s||'                             o.order_total,o.sales_rep_id,'||chr(10)||
'                               CAST(MULTISET(SELECT l.order_id,l.line_item_id,'||chr(10)||
'                                                    l.unit_price,l.quantity,'||chr(10)||
'                                             MAKE_REF(oehr_oc_product_information,'||chr(10)||
'                                                      l.product_id)'||chr(10)||
'                                  ';

s:=s||'           FROM oehr_order_items l'||chr(10)||
'                                             WHERE o.order_id = l.order_id)'||chr(10)||
'                                    AS oehr_order_item_list_typ)'||chr(10)||
'                         FROM oehr_orders o'||chr(10)||
'                         WHERE c.customer_id = o.customer_id)'||chr(10)||
'                AS oehr_order_list_typ)'||chr(10)||
'     FROM oehr_customers c;'||chr(10)||
''||chr(10)||
'-- oc_corporate_customers'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW';

s:=s||' oehr_oc_corporate_customers OF oehr_corporate_customer_typ '||chr(10)||
'  UNDER oehr_oc_customers'||chr(10)||
'    AS SELECT c.customer_id, c.cust_first_name, c.cust_last_name, '||chr(10)||
'              c.cust_address, c.phone_numbers,c.nls_language,c.nls_territory,'||chr(10)||
'              c.credit_limit, c.cust_email, '||chr(10)||
'              CAST(MULTISET(SELECT o.order_id, o.order_mode,'||chr(10)||
'                               MAKE_REF(oehr_oc_customers,o.cu';

s:=s||'stomer_id),'||chr(10)||
'                               o.order_status,'||chr(10)||
'                               o.order_total,o.sales_rep_id,'||chr(10)||
'                               CAST(MULTISET(SELECT l.order_id,l.line_item_id,'||chr(10)||
'                                         l.unit_price,l.quantity,'||chr(10)||
'                                         make_ref(oehr_oc_product_information,'||chr(10)||
'                                                    l.pr';

s:=s||'oduct_id)'||chr(10)||
'                                             FROM oehr_order_items l'||chr(10)||
'                                             WHERE o.order_id = l.order_id)'||chr(10)||
'                                    AS oehr_order_item_list_typ)'||chr(10)||
'                            FROM oehr_orders o'||chr(10)||
'                            WHERE c.customer_id = o.customer_id)'||chr(10)||
'              AS oehr_order_list_typ), c.account_mgr_id'||chr(10)||
'     FROM oe';

s:=s||'hr_customers c;'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE OR REPLACE VIEW oehr_oc_orders OF oehr_order_typ WITH OBJECT OID (order_id)'||chr(10)||
' AS SELECT o.order_id, o.order_mode,MAKE_REF(oehr_oc_customers,o.customer_id),'||chr(10)||
'        o.order_status,o.order_total,o.sales_rep_id,'||chr(10)||
'       CAST(MULTISET(SELECT l.order_id,l.line_item_id,l.unit_price,l.quantity,'||chr(10)||
'                       make_ref(oehr_oc_product_information,l.product_id)'||chr(10)||
'              ';

s:=s||'       FROM oehr_order_items l'||chr(10)||
'                     WHERE o.order_id = l.order_id)'||chr(10)||
'            AS oehr_order_item_list_typ)'||chr(10)||
'    FROM oehr_orders o;';

wwv_flow_api.create_install_script(
  p_id => 313866404027595645 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'create views',
  p_sequence=> 30,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      create_triggers.sql '||chr(10)||
''||chr(10)||
'Rem 	Useful for any subsequent addition of rows to locations table'||chr(10)||
'Rem 	Starts with 3300'||chr(10)||
''||chr(10)||
'CREATE SEQUENCE oehr_locations_seq'||chr(10)||
' START WITH     3300'||chr(10)||
' INCREMENT BY   100'||chr(10)||
' MAXVALUE       9900'||chr(10)||
' NOCACHE'||chr(10)||
' NOCYCLE;'||chr(10)||
''||chr(10)||
'Rem 	Useful for any subsequent addition of rows to departments table';

s:=s||''||chr(10)||
'Rem 	Starts with 280 '||chr(10)||
''||chr(10)||
'CREATE SEQUENCE oehr_departments_seq'||chr(10)||
' START WITH     280'||chr(10)||
' INCREMENT BY   10'||chr(10)||
' MAXVALUE       9990'||chr(10)||
' NOCACHE'||chr(10)||
' NOCYCLE;'||chr(10)||
''||chr(10)||
'Rem 	Useful for any subsequet addition of rows to employees table'||chr(10)||
'Rem 	Starts with 207 '||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE SEQUENCE oehr_employees_seq'||chr(10)||
' START WITH     207'||chr(10)||
' INCREMENT BY   1'||chr(10)||
' NOCACHE'||chr(10)||
' NOCYCLE;'||chr(10)||
''||chr(10)||
'Rem 	Useful for any subsequet addition of rows to order items table'||chr(10)||
'Rem 	Sta';

s:=s||'rts with 1001'||chr(10)||
''||chr(10)||
'CREATE SEQUENCE   oehr_ORDER_ITEMS_SEQ  '||chr(10)||
'MINVALUE 1 '||chr(10)||
'MAXVALUE 10000000000000 '||chr(10)||
'INCREMENT BY 1 '||chr(10)||
'START WITH 1001 '||chr(10)||
'NOCACHE  '||chr(10)||
'NOORDER  '||chr(10)||
'NOCYCLE;'||chr(10)||
''||chr(10)||
'Rem 	Useful for any subsequet addition of rows to order table'||chr(10)||
'Rem 	Starts with 1000'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE SEQUENCE oehr_orders_seq'||chr(10)||
' START WITH     1000'||chr(10)||
' INCREMENT BY   1'||chr(10)||
' NOCACHE'||chr(10)||
' NOCYCLE;'||chr(10)||
''||chr(10)||
'Rem 	Useful for any subsequet addition of rows to Customers table'||chr(10)||
'R';

s:=s||'em 	Starts with 996'||chr(10)||
''||chr(10)||
'CREATE SEQUENCE   oehr_CUSTOMERS_SEQ '||chr(10)||
'MINVALUE 1 '||chr(10)||
'MAXVALUE 999999999 '||chr(10)||
'INCREMENT BY 1 '||chr(10)||
'START WITH 996 '||chr(10)||
'NOCACHE  '||chr(10)||
'ORDER '||chr(10)||
'NOCYCLE;'||chr(10)||
''||chr(10)||
'Rem 	Useful for any subsequet addition of rows to Customers table'||chr(10)||
'Rem 	Starts with 9878'||chr(10)||
''||chr(10)||
'CREATE SEQUENCE  oehr_PRODUCTS_SEQ  '||chr(10)||
'MINVALUE 1 '||chr(10)||
'MAXVALUE 10000000000000 '||chr(10)||
'INCREMENT BY 1 '||chr(10)||
'START WITH 9878 '||chr(10)||
'NOCACHE  '||chr(10)||
'NOORDER  '||chr(10)||
'NOCYCLE;'||chr(10)||
''||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
'REM Create Inde';

s:=s||'xes'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_emp_department_ix'||chr(10)||
'       ON oehr_employees (department_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_emp_job_ix'||chr(10)||
'       ON oehr_employees (job_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_emp_manager_ix'||chr(10)||
'       ON oehr_employees (manager_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_emp_name_ix'||chr(10)||
'       ON oehr_employees (last_name, first_name);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_dept_location_ix'||chr(10)||
'       ON oehr_departments (location_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_j';

s:=s||'hist_job_ix'||chr(10)||
'       ON oehr_job_history (job_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_jhist_employee_ix'||chr(10)||
'       ON oehr_job_history (employee_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_jhist_department_ix'||chr(10)||
'       ON oehr_job_history (department_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_loc_city_ix'||chr(10)||
'       ON oehr_locations (city);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_loc_state_province_ix	'||chr(10)||
'       ON oehr_locations (state_province);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_loc_country_ix'||chr(10)||
'      ';

s:=s||' ON oehr_locations (country_id);'||chr(10)||
''||chr(10)||
'CREATE UNIQUE INDEX oehr_order_items_uk'||chr(10)||
'ON oehr_order_items (order_id, product_id) ;'||chr(10)||
''||chr(10)||
'--'||chr(10)||
'-- Enhancement request 2376117 suggested to have a PRIMARY KEY constraint'||chr(10)||
'-- supported by a non-unique index'||chr(10)||
'-- Starting with 10i R1, this is implemented in table INVENTORIES:'||chr(10)||
'--'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_inventory_ix'||chr(10)||
' ON oehr_inventories (warehouse_id,product_id);'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_';

s:=s||'inventories ENABLE CONSTRAINT oehr_inventory_pk; '||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_whs_location_ix'||chr(10)||
'ON oehr_warehouses (location_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_inv_product_ix'||chr(10)||
'ON oehr_inventories (product_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_item_order_ix'||chr(10)||
'ON oehr_order_items (order_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_item_product_ix'||chr(10)||
'ON oehr_order_items (product_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_ord_sales_rep_ix'||chr(10)||
'ON oehr_orders (sales_rep_id);'||chr(10)||
''||chr(10)||
'CREATE IND';

s:=s||'EX oehr_ord_customer_ix'||chr(10)||
'ON oehr_orders (customer_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_ord_order_date_ix'||chr(10)||
'ON oehr_orders (order_date);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_cust_account_manager_ix'||chr(10)||
'ON oehr_customers (account_mgr_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_cust_lname_ix'||chr(10)||
'ON oehr_customers (cust_last_name);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_cust_email_ix'||chr(10)||
'ON oehr_customers (cust_email);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_prod_name_ix'||chr(10)||
'ON oehr_product_descriptions (trans';

s:=s||'lated_name);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_prod_supplier_ix'||chr(10)||
'ON oehr_product_information (supplier_id);'||chr(10)||
''||chr(10)||
'CREATE INDEX oehr_cust_upper_name_ix'||chr(10)||
'ON oehr_customers (UPPER(cust_last_name), UPPER(cust_first_name));'||chr(10)||
''||chr(10)||
''||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
''||chr(10)||
'REM ==========================================================================='||chr(10)||
'REM Create foreign key constraints for certain tables'||chr(10)||
'REM =====================================================';

s:=s||'======================'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_orders '||chr(10)||
'ADD ( CONSTRAINT oehr_orders_sales_rep_fk '||chr(10)||
'      FOREIGN KEY (sales_rep_id) '||chr(10)||
'      REFERENCES oehr_employees(employee_id)'||chr(10)||
'      ON DELETE SET NULL'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_orders '||chr(10)||
'ADD ( CONSTRAINT oehr_orders_customer_id_fk '||chr(10)||
'      FOREIGN KEY (customer_id) '||chr(10)||
'      REFERENCES oehr_customers(customer_id) '||chr(10)||
'      ON DELETE SET NULL '||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE';

s:=s||' oehr_warehouses '||chr(10)||
'ADD ( CONSTRAINT oehr_warehouses_location_fk '||chr(10)||
'      FOREIGN KEY (location_id)'||chr(10)||
'      REFERENCES oehr_locations(location_id)'||chr(10)||
'      ON DELETE SET NULL'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_customers'||chr(10)||
'ADD ( CONSTRAINT oehr_cust_acct_mgr_fk'||chr(10)||
'      FOREIGN KEY (account_mgr_id)'||chr(10)||
'      REFERENCES oehr_employees(employee_id)'||chr(10)||
'      ON DELETE SET NULL'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_inventories '||chr(10)||
'ADD ( CONSTRAIN';

s:=s||'T oehr_inventories_warehouses_fk '||chr(10)||
'      FOREIGN KEY (warehouse_id)'||chr(10)||
'      REFERENCES oehr_warehouses (warehouse_id)'||chr(10)||
'      ENABLE NOVALIDATE'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_inventories '||chr(10)||
'ADD ( CONSTRAINT oehr_inventories_product_id_fk '||chr(10)||
'      FOREIGN KEY (product_id)'||chr(10)||
'      REFERENCES oehr_product_information (product_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_order_items'||chr(10)||
'ADD ( CONSTRAINT oehr_order_items_order_id_fk '||chr(10)||
'  ';

s:=s||'    FOREIGN KEY (order_id)'||chr(10)||
'      REFERENCES oehr_orders(order_id)'||chr(10)||
'      ON DELETE CASCADE'||chr(10)||
'enable novalidate'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_order_items'||chr(10)||
'ADD ( CONSTRAINT oehr_order_items_product_id_fk '||chr(10)||
'      FOREIGN KEY (product_id)'||chr(10)||
'      REFERENCES oehr_product_information(product_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_product_descriptions'||chr(10)||
'ADD ( CONSTRAINT oehr_pd_product_id_fk'||chr(10)||
'      FOREIGN KEY (product_id)'||chr(10)||
'   ';

s:=s||'   REFERENCES oehr_product_information(product_id)'||chr(10)||
'    ) ;'||chr(10)||
''||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
''||chr(10)||
'REM Create Triggers'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE TRIGGER oehr_secure_employees'||chr(10)||
'  BEFORE INSERT OR UPDATE OR DELETE ON oehr_employees'||chr(10)||
'BEGIN'||chr(10)||
'  oehr_secure_dml;'||chr(10)||
'END oehr_secure_employees;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'ALTER TRIGGER oehr_secure_employees DISABLE;'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_job_history DISABLE CONSTRAINT oehr_jhist_date_interval; '||chr(10)||
''||chr(10)||
'create or replace TRIGGER oehr';

s:=s||'_update_job_history'||chr(10)||
'  AFTER UPDATE OF job_id, department_id ON oehr_employees'||chr(10)||
'  FOR EACH ROW'||chr(10)||
'DECLARE'||chr(10)||
'  l_sdate date;'||chr(10)||
'BEGIN'||chr(10)||
''||chr(10)||
'if (:old.job_id != :new.job_id or '||chr(10)||
'    :old.department_id != :new.department_id) '||chr(10)||
'then'||chr(10)||
''||chr(10)||
'  for c1 in '||chr(10)||
'    (select max(end_date) prev_start_date '||chr(10)||
'       from oehr_job_history'||chr(10)||
'      where employee_id = :old.employee_id) '||chr(10)||
'  loop'||chr(10)||
'     l_sdate := c1.prev_start_date+((24/60)/60);'||chr(10)||
'  ';

s:=s||'end loop;'||chr(10)||
''||chr(10)||
'  oehr_add_job_history(:old.employee_id, '||chr(10)||
'                  nvl(l_sdate,:old.hire_date), '||chr(10)||
'                  sysdate, '||chr(10)||
'                  :old.job_id, '||chr(10)||
'                  :old.department_id);'||chr(10)||
'end if;'||chr(10)||
''||chr(10)||
'  /*add_job_history(:old.employee_id, :old.hire_date, sysdate, '||chr(10)||
'                  :old.job_id, :old.department_id);'||chr(10)||
'  */'||chr(10)||
'END;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
''||chr(10)||
'CREATE OR REPLACE TRIGGER  oehr_oi_pk'||chr(10)||
'BEFORE insert on oehr_O';

s:=s||'RDER_ITEMS'||chr(10)||
'for each row'||chr(10)||
'declare'||chr(10)||
'new_line number;'||chr(10)||
'begin'||chr(10)||
'for c1 in ('||chr(10)||
'  select oehr_ORDER_ITEMS_SEQ.nextval next_val'||chr(10)||
'  from dual'||chr(10)||
') loop'||chr(10)||
'  if :new.order_item_id is null then'||chr(10)||
'    :new.ORDER_ITEM_ID :=  c1.next_val;'||chr(10)||
'  end if;'||chr(10)||
'  SELECT (NVL(MAX(line_item_id),0)+1) INTO new_line  '||chr(10)||
'    FROM oehr_order_items '||chr(10)||
'    WHERE order_id = :new.order_id;  '||chr(10)||
'  :new.line_item_id := new_line;  '||chr(10)||
'end loop;'||chr(10)||
'end;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'CREATE O';

s:=s||'R REPLACE TRIGGER oehr_orders_pk'||chr(10)||
'BEFORE insert on oehr_ORDERS'||chr(10)||
'for each row'||chr(10)||
'begin'||chr(10)||
'for c1 in (select oehr_orders_seq.nextval  nextval from dual) '||chr(10)||
'loop'||chr(10)||
' if :new.order_id is null then '||chr(10)||
'   :new.order_id := c1.nextval;'||chr(10)||
' end if;'||chr(10)||
'end loop;'||chr(10)||
'end;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'CREATE OR REPLACE TRIGGER  oehr_cust_pk'||chr(10)||
'BEFORE insert on oehr_CUSTOMERS'||chr(10)||
'for each row'||chr(10)||
'DECLARE cust_id number;'||chr(10)||
'begin'||chr(10)||
'for c1 in (SELECT oehr_CUSTOMERS_SEQ.nextval ';

s:=s||'cust_id  FROM dual) loop'||chr(10)||
'  if :new.customer_id is null then '||chr(10)||
'   :new.CUSTOMER_ID := c1.cust_id;'||chr(10)||
'  end if;'||chr(10)||
'end loop;'||chr(10)||
'end;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'create or replace TRIGGER  oehr_products_pk'||chr(10)||
'BEFORE insert on oehr_PRODUCT_INFORMATION'||chr(10)||
'for each row'||chr(10)||
'DECLARE prod_id number;'||chr(10)||
'begin'||chr(10)||
'for c1 in (SELECT oehr_PRODUCTS_SEQ.nextval prod_id  FROM dual) loop'||chr(10)||
'  if :new.product_id is null then '||chr(10)||
'   :new.product_ID := c1.prod_id;'||chr(10)||
'  end if;';

s:=s||''||chr(10)||
' end loop;'||chr(10)||
'end;'||chr(10)||
'/'||chr(10)||
''||chr(10)||
'COMMIT;';

wwv_flow_api.create_install_script(
  p_id => 313867022993602099 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'create triggers',
  p_sequence=> 40,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      create_comments.sql '||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_regions '||chr(10)||
'IS ''Regions table that contains region numbers and names. Contains 4 rows; references with the oehr_Countries table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_regions.region_id'||chr(10)||
'IS ''Primary key of oehr_regions table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_regions.region';

s:=s||'_name'||chr(10)||
'IS ''Names of regions. Locations are in the countries of these regions.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_locations'||chr(10)||
'IS ''Locations table that contains specific address of a specific office,'||chr(10)||
'warehouse, and/or production site of a company. Does not store addresses /'||chr(10)||
'locations of customers. Contains 23 rows; references with the'||chr(10)||
'oehr_departments and oehr_countries tables. '';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_locatio';

s:=s||'ns.location_id'||chr(10)||
'IS ''Primary key of oehr_locations table'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_locations.street_address'||chr(10)||
'IS ''Street address of an office, warehouse, or production site of a company.'||chr(10)||
'Contains building number and street name'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_locations.postal_code'||chr(10)||
'IS ''Postal code of the location of an office, warehouse, or production site '||chr(10)||
'of a company. '';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_locations.';

s:=s||'city'||chr(10)||
'IS ''A not null column that shows city where an office, warehouse, or '||chr(10)||
'production site of a company is located. '';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_locations.state_province'||chr(10)||
'IS ''State or Province where an office, warehouse, or production site of a '||chr(10)||
'company is located.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_locations.country_id'||chr(10)||
'IS ''Country where an office, warehouse, or production site of a company is'||chr(10)||
'located. Foreig';

s:=s||'n key to country_id column of the oehr_countries table.'';'||chr(10)||
''||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_departments'||chr(10)||
'IS ''Departments table that shows details of departments where employees '||chr(10)||
'work. Contains 27 rows; references with oehr_locations, oehr_employees, and oehr_job_history tables.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_departments.department_id'||chr(10)||
'IS ''Primary key column of oehr_departments table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_depa';

s:=s||'rtments.department_name'||chr(10)||
'IS ''A not null column that shows name of a department. Administration, '||chr(10)||
'Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public '||chr(10)||
'Relations, Sales, Finance, and Accounting. '';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_departments.manager_id'||chr(10)||
'IS ''Manager_id of a department. Foreign key to employee_id column of oehr_employees table. The manager_id column of the oehr_employee tabl';

s:=s||'e references this column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_departments.location_id'||chr(10)||
'IS ''Location id where a department is located. Foreign key to location_id column of oehr_locations table.'';'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_job_history'||chr(10)||
'IS ''Table that stores job history of the employees. If an employee '||chr(10)||
'changes departments within the job or changes jobs within the department, '||chr(10)||
'new rows get inserted into this tabl';

s:=s||'e with old job information of the '||chr(10)||
'employee. Contains a complex primary key: employee_id+start_date.'||chr(10)||
'Contains 25 rows. References with oehr_jobs, oehr_employees, and oehr_departments tables.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_job_history.employee_id'||chr(10)||
'IS ''A not null column in the complex primary key employee_id+start_date.'||chr(10)||
'Foreign key to employee_id column of the oehr_employee table'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr';

s:=s||'_job_history.start_date'||chr(10)||
'IS ''A not null column in the complex primary key employee_id+start_date. '||chr(10)||
'Must be less than the end_date of the oehr_job_history table. (enforced by '||chr(10)||
'constraint oehr_jhist_date_interval)'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_job_history.end_date'||chr(10)||
'IS ''Last day of the employee in this job role. A not null column. Must be '||chr(10)||
'greater than the start_date of the oehr_job_history table. '||chr(10)||
'(enforc';

s:=s||'ed by constraint oehr_jhist_date_interval)'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_job_history.job_id'||chr(10)||
'IS ''Job role in which the employee worked in the past; foreign key to '||chr(10)||
'job_id column in the oehr_jobs table. A not null column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_job_history.department_id'||chr(10)||
'IS ''Department id in which the employee worked in the past; foreign key to deparment_id column in the oehr_departments table'';'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'C';

s:=s||'OMMENT ON TABLE oehr_countries'||chr(10)||
'IS ''oehr_country table. Contains 25 rows. References with oehr_locations table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_countries.country_id'||chr(10)||
'IS ''Primary key of oehr_countries table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_countries.country_name'||chr(10)||
'IS ''oehr_Country name'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_countries.region_id'||chr(10)||
'IS ''Region ID for the country. Foreign key to region_id column in the oehr_departmen';

s:=s||'ts table.'';'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_jobs'||chr(10)||
'IS ''jobs table with job titles and salary ranges. Contains 19 rows.'||chr(10)||
'References with oehr_employees and oehr_job_history table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_jobs.job_id'||chr(10)||
'IS ''Primary key of jobs oehr_table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_jobs.job_title'||chr(10)||
'IS ''A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_jobs.min_salary'||chr(10)||
'IS ''';

s:=s||'Minimum salary for a job title.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_jobs.max_salary'||chr(10)||
'IS ''Maximum salary for a job title'';'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_employees'||chr(10)||
'IS ''oehr_employees table. Contains 107 rows. References with oehr_departments, '||chr(10)||
'oehr_jobs, oehr_job_history tables. Contains a self reference.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.employee_id'||chr(10)||
'IS ''Primary key of oehr_employees table.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN o';

s:=s||'ehr_employees.first_name'||chr(10)||
'IS ''First name of the employee. A not null column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.last_name'||chr(10)||
'IS ''Last name of the employee. A not null column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.email'||chr(10)||
'IS ''Email id of the employee'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.phone_number'||chr(10)||
'IS ''Phone number of the employee; includes country code and area code'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.hi';

s:=s||'re_date'||chr(10)||
'IS ''Date when the employee started on this job. A not null column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.job_id'||chr(10)||
'IS ''Current job of the employee; foreign key to job_id column of the '||chr(10)||
'oehr_jobs table. A not null column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.salary'||chr(10)||
'IS ''Monthly salary of the employee. Must be greater '||chr(10)||
'than zero (enforced by constraint oehr_emp_salary_min)'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr';

s:=s||'_employees.commission_pct'||chr(10)||
'IS ''Commission percentage of the employee; Only employees in sales '||chr(10)||
'department elgible for commission percentage'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_employees.manager_id'||chr(10)||
'IS ''Manager id of the employee; has same domain as manager_id in '||chr(10)||
'oehr_departments table. Foreign key to employee_id column of oehr_employees table.'||chr(10)||
'(useful for reflexive joins and CONNECT BY query)'';'||chr(10)||
''||chr(10)||
'COMMENT ON C';

s:=s||'OLUMN oehr_employees.department_id'||chr(10)||
'IS ''Department id where employee works; foreign key to department_id '||chr(10)||
'column of the oehr_departments table'';'||chr(10)||
''||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_customers IS'||chr(10)||
'''Contains customers data either entered by an employee or by the customer him/herself over the Web.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_customers.cust_address IS'||chr(10)||
'''Object column of type address_typ.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_custo';

s:=s||'mers.phone_numbers IS'||chr(10)||
'''Varray column of type phone_list_typ.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_customers.cust_geo_location IS'||chr(10)||
'''SDO (spatial) column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_customers.cust_first_name IS'||chr(10)||
'''NOT NULL constraint.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_customers.cust_last_name IS'||chr(10)||
'''NOT NULL constraint.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_customers.credit_limit IS'||chr(10)||
'''Check constraint.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_customers';

s:=s||'.customer_id IS'||chr(10)||
'''Primary key column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_customers.account_mgr_id IS'||chr(10)||
'''References oehr_employees.employee_id.'';'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_warehouses IS'||chr(10)||
'''Warehouse data unspecific to any industry.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_warehouses.wh_geo_location IS'||chr(10)||
'''SDO (spatial) column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_warehouses.warehouse_id IS'||chr(10)||
'''Primary key column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_wareh';

s:=s||'ouses.location_id IS'||chr(10)||
'''Primary key column, references oehr_locations.location_id.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_order_items IS'||chr(10)||
'''Example of many-to-many resolution.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_order_items.order_id IS'||chr(10)||
'''Part of concatenated primary key, references orders.order_id.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_order_items.product_id IS'||chr(10)||
'''References oehr_product_information.product_id.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_or';

s:=s||'der_items.line_item_id IS'||chr(10)||
'''Part of concatenated primary key.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_orders.order_status IS'||chr(10)||
'''0: Not fully entered, 1: Entered, 2: Canceled - bad credit, -'||chr(10)||
'3: Canceled - by customer, 4: Shipped - whole order, -'||chr(10)||
'5: Shipped - replacement items, 6: Shipped - backlog on items, -'||chr(10)||
'7: Shipped - special delivery, 8: Shipped - billed, 9: Shipped - payment plan,-'||chr(10)||
'10: Shipped - paid'';'||chr(10)||
''||chr(10)||
''||chr(10)||
'COMM';

s:=s||'ENT ON TABLE oehr_orders IS'||chr(10)||
'''Contains orders entered by a salesperson as well as over the Web.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_orders.order_date IS'||chr(10)||
'''TIMESTAMP WITH LOCAL TIME ZONE column, NOT NULL constraint.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_orders.order_id IS'||chr(10)||
'''PRIMARY KEY column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_orders.sales_rep_id IS'||chr(10)||
'''References oehr_employees.employee_id.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_orders.promotion';

s:=s||'_id IS'||chr(10)||
'''Sales promotion ID. Used in SH schema'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_orders.order_mode IS'||chr(10)||
'''CHECK constraint.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_orders.order_total IS'||chr(10)||
'''CHECK constraint.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_inventories IS'||chr(10)||
'''Tracks availability of products by product_it and warehouse_id.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_inventories.product_id IS'||chr(10)||
'''Part of concatenated primary key, references oehr_product_infor';

s:=s||'mation.product_id.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_inventories.warehouse_id IS'||chr(10)||
'''Part of concatenated primary key, references oehr_warehouses.warehouse_id.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_product_information IS'||chr(10)||
'''Non-industry-specific data in various categories.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_information.product_id IS'||chr(10)||
'''Primary key column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_information.product_description IS'||chr(10)||
'''P';

s:=s||'rimary language description corresponding to translated_description in'||chr(10)||
'oehr_product_descriptions, added to provide non-NLS text columns for OC views to access.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_information.category_id IS'||chr(10)||
'''Low cardinality column, can be used for bitmap index. '||chr(10)||
'Schema SH uses it as foreign key'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_information.weight_class IS'||chr(10)||
'''Low cardinality column, can';

s:=s||' be used for bitmap index.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_information.warranty_period IS'||chr(10)||
'''INTERVAL YEAER TO MONTH column, low cardinality, can be used for bitmap '||chr(10)||
'index.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_information.supplier_id IS'||chr(10)||
'''Offers possibility of extensions outside Common Schema.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_information.product_status IS'||chr(10)||
'''Check constraint. Appropriate for complex ru';

s:=s||'les, such as "All products in '||chr(10)||
'status PRODUCTION must have at least one inventory entry." Also appropriate '||chr(10)||
'for a trigger auditing status change.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_product_descriptions IS'||chr(10)||
'''Non-industry-specific design, allows selection of NLS-setting-specific data derived at runtime, for example using the products view.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_descriptions.product_id IS'||chr(10)||
'''Primary k';

s:=s||'ey column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON COLUMN oehr_product_descriptions.language_id IS'||chr(10)||
'''Primary key column.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_products IS'||chr(10)||
'''This view joins oehr_product_information and oehr_product_descriptions, using NLS'||chr(10)||
'settings to pick the appropriate language-specific product description.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_bombay_inventory IS'||chr(10)||
'''This view shows inventories at the Bombay warehouse.'';'||chr(10)||
''||chr(10)||
'COMMENT ON T';

s:=s||'ABLE oehr_sydney_inventory IS'||chr(10)||
'''This view shows inventories at the Sydney warehouse.'';'||chr(10)||
''||chr(10)||
'COMMENT ON TABLE oehr_toronto_inventory IS'||chr(10)||
'''This view shows inventories at the Toronto warehouse.'';'||chr(10)||
'COMMIT;';

wwv_flow_api.create_install_script(
  p_id => 313867607681609172 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'create comments',
  p_sequence=> 50,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      seed_customers.sql '||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_regions VALUES '||chr(10)||
'        ( 1'||chr(10)||
'        , ''Europe'' '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_regions VALUES '||chr(10)||
'        ( 2'||chr(10)||
'        , ''Americas'' '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_regions VALUES '||chr(10)||
'        ( 3'||chr(10)||
'        , ''Asia'' '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_regions VALUES '||chr(10)||
'       ';

s:=s||' ( 4'||chr(10)||
'        , ''Middle East and Africa'' '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
''||chr(10)||
'REM ***************************insert data into the COUNTRIES table'||chr(10)||
''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''IT'''||chr(10)||
'        , ''Italy'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''JP'''||chr(10)||
'        , ''Japan'''||chr(10)||
'	, 3 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''US'''||chr(10)||
'        , ''United States of America'''||chr(10)||
'        , ';

s:=s||'2 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''CA'''||chr(10)||
'        , ''Canada'''||chr(10)||
'        , 2 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''CN'''||chr(10)||
'        , ''China'''||chr(10)||
'        , 3 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''IN'''||chr(10)||
'        , ''India'''||chr(10)||
'        , 3 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''AU'''||chr(10)||
'        , ''Australia'''||chr(10)||
'        , 3 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT I';

s:=s||'NTO oehr_countries VALUES '||chr(10)||
'        ( ''ZW'''||chr(10)||
'        , ''Zimbabwe'''||chr(10)||
'        , 4 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''SG'''||chr(10)||
'        , ''Singapore'''||chr(10)||
'        , 3 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''UK'''||chr(10)||
'        , ''United Kingdom'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''FR'''||chr(10)||
'        , ''France'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_co';

s:=s||'untries VALUES '||chr(10)||
'        ( ''DE'''||chr(10)||
'        , ''Germany'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''ZM'''||chr(10)||
'        , ''Zambia'''||chr(10)||
'        , 4 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''EG'''||chr(10)||
'        , ''Egypt'''||chr(10)||
'        , 4 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''BR'''||chr(10)||
'        , ''Brazil'''||chr(10)||
'        , 2 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ';

s:=s||'( ''CH'''||chr(10)||
'        , ''Switzerland'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''NL'''||chr(10)||
'        , ''Netherlands'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''MX'''||chr(10)||
'        , ''Mexico'''||chr(10)||
'        , 2 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''KW'''||chr(10)||
'        , ''Kuwait'''||chr(10)||
'        , 4 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''IL'''||chr(10)||
'       ';

s:=s||' , ''Israel'''||chr(10)||
'        , 4 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''DK'''||chr(10)||
'        , ''Denmark'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''HK'''||chr(10)||
'        , ''HongKong'''||chr(10)||
'        , 3 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''NG'''||chr(10)||
'        , ''Nigeria'''||chr(10)||
'        , 4 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''AR'''||chr(10)||
'        , ''Argentina'''||chr(10)||
'     ';

s:=s||'   , 2 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_countries VALUES '||chr(10)||
'        ( ''BE'''||chr(10)||
'        , ''Belgium'''||chr(10)||
'        , 1 '||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'REM ***************************insert data into the oehr_locations table'||chr(10)||
''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1000 '||chr(10)||
'        , ''1297 Via Cola di Rie'''||chr(10)||
'        , ''00989'''||chr(10)||
'        , ''Roma'''||chr(10)||
'        , NULL'||chr(10)||
'        , ''IT'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1100';

s:=s||' '||chr(10)||
'        , ''93091 Calle della Testa'''||chr(10)||
'        , ''10934'''||chr(10)||
'        , ''Venice'''||chr(10)||
'        , NULL'||chr(10)||
'        , ''IT'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1200 '||chr(10)||
'        , ''2017 Shinjuku-ku'''||chr(10)||
'        , ''1689'''||chr(10)||
'        , ''Tokyo'''||chr(10)||
'        , ''Tokyo Prefecture'''||chr(10)||
'        , ''JP'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1300 '||chr(10)||
'        , ''9450 Kamiya-cho'''||chr(10)||
'        , ''6823'''||chr(10)||
'        , ''Hiros';

s:=s||'hima'''||chr(10)||
'        , NULL'||chr(10)||
'        , ''JP'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1400 '||chr(10)||
'        , ''2014 Jabberwocky Rd'''||chr(10)||
'        , ''26192'''||chr(10)||
'        , ''Southlake'''||chr(10)||
'        , ''Texas'''||chr(10)||
'        , ''US'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1500 '||chr(10)||
'        , ''2011 Interiors Blvd'''||chr(10)||
'        , ''99236'''||chr(10)||
'        , ''South San Francisco'''||chr(10)||
'        , ''California'''||chr(10)||
'        , ''US'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'I';

s:=s||'NSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1600 '||chr(10)||
'        , ''2007 Zagora St'''||chr(10)||
'        , ''50090'''||chr(10)||
'        , ''South Brunswick'''||chr(10)||
'        , ''New Jersey'''||chr(10)||
'        , ''US'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1700 '||chr(10)||
'        , ''2004 Charade Rd'''||chr(10)||
'        , ''98199'''||chr(10)||
'        , ''Seattle'''||chr(10)||
'        , ''Washington'''||chr(10)||
'        , ''US'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1800 '||chr(10)||
'        ,';

s:=s||' ''147 Spadina Ave'''||chr(10)||
'        , ''M5V 2L7'''||chr(10)||
'        , ''Toronto'''||chr(10)||
'        , ''Ontario'''||chr(10)||
'        , ''CA'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 1900 '||chr(10)||
'        , ''6092 Boxwood St'''||chr(10)||
'        , ''YSW 9T2'''||chr(10)||
'        , ''Whitehorse'''||chr(10)||
'        , ''Yukon'''||chr(10)||
'        , ''CA'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2000 '||chr(10)||
'        , ''40-5-12 Laogianggen'''||chr(10)||
'        , ''190518'''||chr(10)||
'        , ''Beijing'''||chr(10)||
'     ';

s:=s||'   , NULL'||chr(10)||
'        , ''CN'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2100 '||chr(10)||
'        , ''1298 Vileparle (E)'''||chr(10)||
'        , ''490231'''||chr(10)||
'        , ''Bombay'''||chr(10)||
'        , ''Maharashtra'''||chr(10)||
'        , ''IN'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2200 '||chr(10)||
'        , ''12-98 Victoria Street'''||chr(10)||
'        , ''2901'''||chr(10)||
'        , ''Sydney'''||chr(10)||
'        , ''New South Wales'''||chr(10)||
'        , ''AU'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr';

s:=s||'_locations VALUES '||chr(10)||
'        ( 2300 '||chr(10)||
'        , ''198 Clementi North'''||chr(10)||
'        , ''540198'''||chr(10)||
'        , ''Singapore'''||chr(10)||
'        , NULL'||chr(10)||
'        , ''SG'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2400 '||chr(10)||
'        , ''8204 Arthur St'''||chr(10)||
'        , NULL'||chr(10)||
'        , ''London'''||chr(10)||
'        , NULL'||chr(10)||
'        , ''UK'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2500 '||chr(10)||
'        , ''Magdalen Centre, The Oxford Science';

s:=s||' Park'''||chr(10)||
'        , ''OX9 9ZB'''||chr(10)||
'        , ''Oxford'''||chr(10)||
'        , ''Oxford'''||chr(10)||
'        , ''UK'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2600 '||chr(10)||
'        , ''9702 Chester Road'''||chr(10)||
'        , ''09629850293'''||chr(10)||
'        , ''Stretford'''||chr(10)||
'        , ''Manchester'''||chr(10)||
'        , ''UK'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2700 '||chr(10)||
'        , ''Schwanthalerstr. 7031'''||chr(10)||
'        , ''80925'''||chr(10)||
'        , ''Munich'''||chr(10)||
'        ,';

s:=s||' ''Bavaria'''||chr(10)||
'        , ''DE'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2800 '||chr(10)||
'        , ''Rua Frei Caneca 1360 '''||chr(10)||
'        , ''01307-002'''||chr(10)||
'        , ''Sao Paulo'''||chr(10)||
'        , ''Sao Paulo'''||chr(10)||
'        , ''BR'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 2900 '||chr(10)||
'        , ''20 Rue des Corps-Saints'''||chr(10)||
'        , ''1730'''||chr(10)||
'        , ''Geneva'''||chr(10)||
'        , ''Geneve'''||chr(10)||
'        , ''CH'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oeh';

s:=s||'r_locations VALUES '||chr(10)||
'        ( 3000 '||chr(10)||
'        , ''Murtenstrasse 921'''||chr(10)||
'        , ''3095'''||chr(10)||
'        , ''Bern'''||chr(10)||
'        , ''BE'''||chr(10)||
'        , ''CH'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 3100 '||chr(10)||
'        , ''Pieter Breughelstraat 837'''||chr(10)||
'        , ''3029SK'''||chr(10)||
'        , ''Utrecht'''||chr(10)||
'        , ''Utrecht'''||chr(10)||
'        , ''NL'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_locations VALUES '||chr(10)||
'        ( 3200 '||chr(10)||
'        , ''Mariano Escobedo 9991';

s:=s||''''||chr(10)||
'        , ''11932'''||chr(10)||
'        , ''Mexico City'''||chr(10)||
'        , ''Distrito Federal,'''||chr(10)||
'        , ''MX'''||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'REM ****************************insert data into the oehr_departments table'||chr(10)||
''||chr(10)||
''||chr(10)||
'REM disable integrity constraint to oehr_employees to load data'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_departments '||chr(10)||
'  DISABLE CONSTRAINT oehr_dept_mgr_fk;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 10'||chr(10)||
'        , ''Administration'''||chr(10)||
'        ,';

s:=s||' 200'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 20'||chr(10)||
'        , ''Marketing'''||chr(10)||
'        , 201'||chr(10)||
'        , 1800'||chr(10)||
'        );'||chr(10)||
'                                '||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 30'||chr(10)||
'        , ''Purchasing'''||chr(10)||
'        , 114'||chr(10)||
'        , 1700'||chr(10)||
'	);'||chr(10)||
'                '||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 40'||chr(10)||
'        , ''Human Resources'''||chr(10)||
'        , 203'||chr(10)||
'        ';

s:=s||', 2400'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 50'||chr(10)||
'        , ''Shipping'''||chr(10)||
'        , 121'||chr(10)||
'        , 1500'||chr(10)||
'        );'||chr(10)||
'                '||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 60 '||chr(10)||
'        , ''IT'''||chr(10)||
'        , 103'||chr(10)||
'        , 1400'||chr(10)||
'        );'||chr(10)||
'                '||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 70 '||chr(10)||
'        , ''Public Relations'''||chr(10)||
'        , 204'||chr(10)||
'        , 2700'||chr(10)||
'        );'||chr(10)||
'          ';

s:=s||'      '||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 80 '||chr(10)||
'        , ''Sales'''||chr(10)||
'        , 145'||chr(10)||
'        , 2500'||chr(10)||
'        );'||chr(10)||
'                '||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 90 '||chr(10)||
'        , ''Executive'''||chr(10)||
'        , 100'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 100 '||chr(10)||
'        , ''Finance'''||chr(10)||
'        , 108'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
'                '||chr(10)||
'INSERT INTO oehr_departm';

s:=s||'ents VALUES '||chr(10)||
'        ( 110 '||chr(10)||
'        , ''Accounting'''||chr(10)||
'        , 205'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 120 '||chr(10)||
'        , ''Treasury'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 130 '||chr(10)||
'        , ''Corporate Tax'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 140 '||chr(10)||
'        , ''Control An';

s:=s||'d Credit'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 150 '||chr(10)||
'        , ''Shareholder Services'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 160 '||chr(10)||
'        , ''Benefits'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 170 '||chr(10)||
'        , ''Manufacturing'''||chr(10)||
'        , NULL'||chr(10)||
'        , 170';

s:=s||'0'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 180 '||chr(10)||
'        , ''Construction'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 190 '||chr(10)||
'        , ''Contracting'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 200 '||chr(10)||
'        , ''Operations'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VAL';

s:=s||'UES '||chr(10)||
'        ( 210 '||chr(10)||
'        , ''IT Support'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 220 '||chr(10)||
'        , ''NOC'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 230 '||chr(10)||
'        , ''IT Helpdesk'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 240 '||chr(10)||
'        , ''Government Sales'''||chr(10)||
'      ';

s:=s||'  , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 250 '||chr(10)||
'        , ''Retail Sales'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 260 '||chr(10)||
'        , ''Recruiting'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_departments VALUES '||chr(10)||
'        ( 270 '||chr(10)||
'        , ''Payroll'''||chr(10)||
'        , NULL'||chr(10)||
'        , 1700'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'REM **********';

s:=s||'*****************insert data into the oehr_jobs table'||chr(10)||
''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''AD_PRES'''||chr(10)||
'        , ''President'''||chr(10)||
'        , 20000'||chr(10)||
'        , 40000'||chr(10)||
'        );'||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''AD_VP'''||chr(10)||
'        , ''Administration Vice President'''||chr(10)||
'        , 15000'||chr(10)||
'        , 30000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''AD_ASST'''||chr(10)||
'        , ''Administration Assistant'''||chr(10)||
'        ';

s:=s||', 3000'||chr(10)||
'        , 6000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''FI_MGR'''||chr(10)||
'        , ''Finance Manager'''||chr(10)||
'        , 8200'||chr(10)||
'        , 16000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''FI_ACCOUNT'''||chr(10)||
'        , ''Accountant'''||chr(10)||
'        , 4200'||chr(10)||
'        , 9000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''AC_MGR'''||chr(10)||
'        , ''Accounting Manager'''||chr(10)||
'        , 8200'||chr(10)||
'        , 16000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSER';

s:=s||'T INTO oehr_jobs VALUES '||chr(10)||
'        ( ''AC_ACCOUNT'''||chr(10)||
'        , ''Public Accountant'''||chr(10)||
'        , 4200'||chr(10)||
'        , 9000'||chr(10)||
'        );'||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''SA_MAN'''||chr(10)||
'        , ''Sales Manager'''||chr(10)||
'        , 10000'||chr(10)||
'        , 20000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''SA_REP'''||chr(10)||
'        , ''Sales Representative'''||chr(10)||
'        , 6000'||chr(10)||
'        , 12000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'       ';

s:=s||' ( ''PU_MAN'''||chr(10)||
'        , ''Purchasing Manager'''||chr(10)||
'        , 8000'||chr(10)||
'        , 15000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''PU_CLERK'''||chr(10)||
'        , ''Purchasing Clerk'''||chr(10)||
'        , 2500'||chr(10)||
'        , 5500'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''ST_MAN'''||chr(10)||
'        , ''Stock Manager'''||chr(10)||
'        , 5500'||chr(10)||
'        , 8500'||chr(10)||
'        );'||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''ST_CLERK'''||chr(10)||
'        , ''Stock Clerk'''||chr(10)||
' ';

s:=s||'       , 2000'||chr(10)||
'        , 5000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''SH_CLERK'''||chr(10)||
'        , ''Shipping Clerk'''||chr(10)||
'        , 2500'||chr(10)||
'        , 5500'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''IT_PROG'''||chr(10)||
'        , ''Programmer'''||chr(10)||
'        , 4000'||chr(10)||
'        , 10000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''MK_MAN'''||chr(10)||
'        , ''Marketing Manager'''||chr(10)||
'        , 9000'||chr(10)||
'        , 15000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'I';

s:=s||'NSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''MK_REP'''||chr(10)||
'        , ''Marketing Representative'''||chr(10)||
'        , 4000'||chr(10)||
'        , 9000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''HR_REP'''||chr(10)||
'        , ''Human Resources Representative'''||chr(10)||
'        , 4000'||chr(10)||
'        , 9000'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_jobs VALUES '||chr(10)||
'        ( ''PR_REP'''||chr(10)||
'        , ''Public Relations Representative'''||chr(10)||
'        , 4500'||chr(10)||
'        , 10500'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
''||chr(10)||
'RE';

s:=s||'M ***************************insert data into the oehr_employees table'||chr(10)||
''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 100'||chr(10)||
'        , ''Steven'''||chr(10)||
'        , ''King'''||chr(10)||
'        , ''SKING'''||chr(10)||
'        , ''515.123.4567'''||chr(10)||
'        , TO_DATE(''17-JUN-1987'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''AD_PRES'''||chr(10)||
'        , 24000'||chr(10)||
'        , NULL'||chr(10)||
'        , NULL'||chr(10)||
'        , 90'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 101'||chr(10)||
'        , ''';

s:=s||'Neena'''||chr(10)||
'        , ''Kochhar'''||chr(10)||
'        , ''NKOCHHAR'''||chr(10)||
'        , ''515.123.4568'''||chr(10)||
'        , TO_DATE(''21-SEP-1989'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''AD_VP'''||chr(10)||
'        , 17000'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 90'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 102'||chr(10)||
'        , ''Lex'''||chr(10)||
'        , ''De Haan'''||chr(10)||
'        , ''LDEHAAN'''||chr(10)||
'        , ''515.123.4569'''||chr(10)||
'        , TO_DATE(''13-JAN-1993'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''AD';

s:=s||'_VP'''||chr(10)||
'        , 17000'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 90'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 103'||chr(10)||
'        , ''Alexander'''||chr(10)||
'        , ''Hunold'''||chr(10)||
'        , ''AHUNOLD'''||chr(10)||
'        , ''590.423.4567'''||chr(10)||
'        , TO_DATE(''03-JAN-1990'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''IT_PROG'''||chr(10)||
'        , 9000'||chr(10)||
'        , NULL'||chr(10)||
'        , 102'||chr(10)||
'        , 60'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 104'||chr(10)||
'    ';

s:=s||'    , ''Bruce'''||chr(10)||
'        , ''Ernst'''||chr(10)||
'        , ''BERNST'''||chr(10)||
'        , ''590.423.4568'''||chr(10)||
'        , TO_DATE(''21-MAY-1991'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''IT_PROG'''||chr(10)||
'        , 6000'||chr(10)||
'        , NULL'||chr(10)||
'        , 103'||chr(10)||
'        , 60'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 105'||chr(10)||
'        , ''David'''||chr(10)||
'        , ''Austin'''||chr(10)||
'        , ''DAUSTIN'''||chr(10)||
'        , ''590.423.4569'''||chr(10)||
'        , TO_DATE(''25-JUN-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        ';

s:=s||', ''IT_PROG'''||chr(10)||
'        , 4800'||chr(10)||
'        , NULL'||chr(10)||
'        , 103'||chr(10)||
'        , 60'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 106'||chr(10)||
'        , ''Valli'''||chr(10)||
'        , ''Pataballa'''||chr(10)||
'        , ''VPATABAL'''||chr(10)||
'        , ''590.423.4560'''||chr(10)||
'        , TO_DATE(''05-FEB-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''IT_PROG'''||chr(10)||
'        , 4800'||chr(10)||
'        , NULL'||chr(10)||
'        , 103'||chr(10)||
'        , 60'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 10';

s:=s||'7'||chr(10)||
'        , ''Diana'''||chr(10)||
'        , ''Lorentz'''||chr(10)||
'        , ''DLORENTZ'''||chr(10)||
'        , ''590.423.5567'''||chr(10)||
'        , TO_DATE(''07-FEB-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''IT_PROG'''||chr(10)||
'        , 4200'||chr(10)||
'        , NULL'||chr(10)||
'        , 103'||chr(10)||
'        , 60'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 108'||chr(10)||
'        , ''Nancy'''||chr(10)||
'        , ''Greenberg'''||chr(10)||
'        , ''NGREENBE'''||chr(10)||
'        , ''515.124.4569'''||chr(10)||
'        , TO_DATE(''17-AUG-1994'', ''dd-MON-y';

s:=s||'yyy'')'||chr(10)||
'        , ''FI_MGR'''||chr(10)||
'        , 12000'||chr(10)||
'        , NULL'||chr(10)||
'        , 101'||chr(10)||
'        , 100'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 109'||chr(10)||
'        , ''Daniel'''||chr(10)||
'        , ''Faviet'''||chr(10)||
'        , ''DFAVIET'''||chr(10)||
'        , ''515.124.4169'''||chr(10)||
'        , TO_DATE(''16-AUG-1994'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''FI_ACCOUNT'''||chr(10)||
'        , 9000'||chr(10)||
'        , NULL'||chr(10)||
'        , 108'||chr(10)||
'        , 100'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALU';

s:=s||'ES '||chr(10)||
'        ( 110'||chr(10)||
'        , ''John'''||chr(10)||
'        , ''Chen'''||chr(10)||
'        , ''JCHEN'''||chr(10)||
'        , ''515.124.4269'''||chr(10)||
'        , TO_DATE(''28-SEP-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''FI_ACCOUNT'''||chr(10)||
'        , 8200'||chr(10)||
'        , NULL'||chr(10)||
'        , 108'||chr(10)||
'        , 100'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 111'||chr(10)||
'        , ''Ismael'''||chr(10)||
'        , ''Sciarra'''||chr(10)||
'        , ''ISCIARRA'''||chr(10)||
'        , ''515.124.4369'''||chr(10)||
'        , TO_DATE(''30-SEP-1997';

s:=s||''', ''dd-MON-yyyy'')'||chr(10)||
'        , ''FI_ACCOUNT'''||chr(10)||
'        , 7700'||chr(10)||
'        , NULL'||chr(10)||
'        , 108'||chr(10)||
'        , 100'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 112'||chr(10)||
'        , ''Jose Manuel'''||chr(10)||
'        , ''Urman'''||chr(10)||
'        , ''JMURMAN'''||chr(10)||
'        , ''515.124.4469'''||chr(10)||
'        , TO_DATE(''07-MAR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''FI_ACCOUNT'''||chr(10)||
'        , 7800'||chr(10)||
'        , NULL'||chr(10)||
'        , 108'||chr(10)||
'        , 100'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO ';

s:=s||'oehr_employees VALUES '||chr(10)||
'        ( 113'||chr(10)||
'        , ''Luis'''||chr(10)||
'        , ''Popp'''||chr(10)||
'        , ''LPOPP'''||chr(10)||
'        , ''515.124.4567'''||chr(10)||
'        , TO_DATE(''07-DEC-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''FI_ACCOUNT'''||chr(10)||
'        , 6900'||chr(10)||
'        , NULL'||chr(10)||
'        , 108'||chr(10)||
'        , 100'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 114'||chr(10)||
'        , ''Den'''||chr(10)||
'        , ''Raphaely'''||chr(10)||
'        , ''DRAPHEAL'''||chr(10)||
'        , ''515.127.4561'''||chr(10)||
'        , TO_';

s:=s||'DATE(''07-DEC-1994'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''PU_MAN'''||chr(10)||
'        , 11000'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 30'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 115'||chr(10)||
'        , ''Alexander'''||chr(10)||
'        , ''Khoo'''||chr(10)||
'        , ''AKHOO'''||chr(10)||
'        , ''515.127.4562'''||chr(10)||
'        , TO_DATE(''18-MAY-1995'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''PU_CLERK'''||chr(10)||
'        , 3100'||chr(10)||
'        , NULL'||chr(10)||
'        , 114'||chr(10)||
'        , 30'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT ';

s:=s||'INTO oehr_employees VALUES '||chr(10)||
'        ( 116'||chr(10)||
'        , ''Shelli'''||chr(10)||
'        , ''Baida'''||chr(10)||
'        , ''SBAIDA'''||chr(10)||
'        , ''515.127.4563'''||chr(10)||
'        , TO_DATE(''24-DEC-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''PU_CLERK'''||chr(10)||
'        , 2900'||chr(10)||
'        , NULL'||chr(10)||
'        , 114'||chr(10)||
'        , 30'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 117'||chr(10)||
'        , ''Sigal'''||chr(10)||
'        , ''Tobias'''||chr(10)||
'        , ''STOBIAS'''||chr(10)||
'        , ''515.127.4564'''||chr(10)||
'        ';

s:=s||', TO_DATE(''24-JUL-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''PU_CLERK'''||chr(10)||
'        , 2800'||chr(10)||
'        , NULL'||chr(10)||
'        , 114'||chr(10)||
'        , 30'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 118'||chr(10)||
'        , ''Guy'''||chr(10)||
'        , ''Himuro'''||chr(10)||
'        , ''GHIMURO'''||chr(10)||
'        , ''515.127.4565'''||chr(10)||
'        , TO_DATE(''15-NOV-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''PU_CLERK'''||chr(10)||
'        , 2600'||chr(10)||
'        , NULL'||chr(10)||
'        , 114'||chr(10)||
'        , 30'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INS';

s:=s||'ERT INTO oehr_employees VALUES '||chr(10)||
'        ( 119'||chr(10)||
'        , ''Karen'''||chr(10)||
'        , ''Colmenares'''||chr(10)||
'        , ''KCOLMENA'''||chr(10)||
'        , ''515.127.4566'''||chr(10)||
'        , TO_DATE(''10-AUG-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''PU_CLERK'''||chr(10)||
'        , 2500'||chr(10)||
'        , NULL'||chr(10)||
'        , 114'||chr(10)||
'        , 30'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 120'||chr(10)||
'        , ''Matthew'''||chr(10)||
'        , ''Weiss'''||chr(10)||
'        , ''MWEISS'''||chr(10)||
'        , ''650.123.1234';

s:=s||''''||chr(10)||
'        , TO_DATE(''18-JUL-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_MAN'''||chr(10)||
'        , 8000'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 121'||chr(10)||
'        , ''Adam'''||chr(10)||
'        , ''Fripp'''||chr(10)||
'        , ''AFRIPP'''||chr(10)||
'        , ''650.123.2234'''||chr(10)||
'        , TO_DATE(''10-APR-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_MAN'''||chr(10)||
'        , 8200'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 50'||chr(10)||
'        );';

s:=s||''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 122'||chr(10)||
'        , ''Payam'''||chr(10)||
'        , ''Kaufling'''||chr(10)||
'        , ''PKAUFLIN'''||chr(10)||
'        , ''650.123.3234'''||chr(10)||
'        , TO_DATE(''01-MAY-1995'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_MAN'''||chr(10)||
'        , 7900'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 123'||chr(10)||
'        , ''Shanta'''||chr(10)||
'        , ''Vollman'''||chr(10)||
'        , ''SVOLLMAN'''||chr(10)||
'        , ''650.123.';

s:=s||'4234'''||chr(10)||
'        , TO_DATE(''10-OCT-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_MAN'''||chr(10)||
'        , 6500'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 124'||chr(10)||
'        , ''Kevin'''||chr(10)||
'        , ''Mourgos'''||chr(10)||
'        , ''KMOURGOS'''||chr(10)||
'        , ''650.123.5234'''||chr(10)||
'        , TO_DATE(''16-NOV-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_MAN'''||chr(10)||
'        , 5800'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 50'||chr(10)||
' ';

s:=s||'       );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 125'||chr(10)||
'        , ''Julia'''||chr(10)||
'        , ''Nayer'''||chr(10)||
'        , ''JNAYER'''||chr(10)||
'        , ''650.124.1214'''||chr(10)||
'        , TO_DATE(''16-JUL-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 3200'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 126'||chr(10)||
'        , ''Irene'''||chr(10)||
'        , ''Mikkilineni'''||chr(10)||
'        , ''IMIKKILI'''||chr(10)||
'        , ';

s:=s||'''650.124.1224'''||chr(10)||
'        , TO_DATE(''28-SEP-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2700'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 127'||chr(10)||
'        , ''James'''||chr(10)||
'        , ''Landry'''||chr(10)||
'        , ''JLANDRY'''||chr(10)||
'        , ''650.124.1334'''||chr(10)||
'        , TO_DATE(''14-JAN-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2400'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'   ';

s:=s||'     , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 128'||chr(10)||
'        , ''Steven'''||chr(10)||
'        , ''Markle'''||chr(10)||
'        , ''SMARKLE'''||chr(10)||
'        , ''650.124.1434'''||chr(10)||
'        , TO_DATE(''08-MAR-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2200'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 129'||chr(10)||
'        , ''Laura'''||chr(10)||
'        , ''Bissot'''||chr(10)||
'        , ''LBISSOT'''||chr(10)||
'  ';

s:=s||'      , ''650.124.5234'''||chr(10)||
'        , TO_DATE(''20-AUG-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 3300'||chr(10)||
'        , NULL'||chr(10)||
'        , 121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 130'||chr(10)||
'        , ''Mozhe'''||chr(10)||
'        , ''Atkinson'''||chr(10)||
'        , ''MATKINSO'''||chr(10)||
'        , ''650.124.6234'''||chr(10)||
'        , TO_DATE(''30-OCT-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2800'||chr(10)||
'        , NULL'||chr(10)||
'      ';

s:=s||'  , 121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 131'||chr(10)||
'        , ''James'''||chr(10)||
'        , ''Marlow'''||chr(10)||
'        , ''JAMRLOW'''||chr(10)||
'        , ''650.124.7234'''||chr(10)||
'        , TO_DATE(''16-FEB-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2500'||chr(10)||
'        , NULL'||chr(10)||
'        , 121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 132'||chr(10)||
'        , ''TJ'''||chr(10)||
'        , ''Olson'''||chr(10)||
'        , ''TJOLS';

s:=s||'ON'''||chr(10)||
'        , ''650.124.8234'''||chr(10)||
'        , TO_DATE(''10-APR-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2100'||chr(10)||
'        , NULL'||chr(10)||
'        , 121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 133'||chr(10)||
'        , ''Jason'''||chr(10)||
'        , ''Mallin'''||chr(10)||
'        , ''JMALLIN'''||chr(10)||
'        , ''650.127.1934'''||chr(10)||
'        , TO_DATE(''14-JUN-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 3300'||chr(10)||
'        , NULL'||chr(10)||
'   ';

s:=s||'     , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 134'||chr(10)||
'        , ''Michael'''||chr(10)||
'        , ''Rogers'''||chr(10)||
'        , ''MROGERS'''||chr(10)||
'        , ''650.127.1834'''||chr(10)||
'        , TO_DATE(''26-AUG-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2900'||chr(10)||
'        , NULL'||chr(10)||
'        , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 135'||chr(10)||
'        , ''Ki'''||chr(10)||
'        , ''Gee'''||chr(10)||
'        , ''KG';

s:=s||'EE'''||chr(10)||
'        , ''650.127.1734'''||chr(10)||
'        , TO_DATE(''12-DEC-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2400'||chr(10)||
'        , NULL'||chr(10)||
'        , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 136'||chr(10)||
'        , ''Hazel'''||chr(10)||
'        , ''Philtanker'''||chr(10)||
'        , ''HPHILTAN'''||chr(10)||
'        , ''650.127.1634'''||chr(10)||
'        , TO_DATE(''06-FEB-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2200'||chr(10)||
'        , NUL';

s:=s||'L'||chr(10)||
'        , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 137'||chr(10)||
'        , ''Renske'''||chr(10)||
'        , ''Ladwig'''||chr(10)||
'        , ''RLADWIG'''||chr(10)||
'        , ''650.121.1234'''||chr(10)||
'        , TO_DATE(''14-JUL-1995'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 3600'||chr(10)||
'        , NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 138'||chr(10)||
'        , ''Stephen'''||chr(10)||
'        , ''Stiles'''||chr(10)||
' ';

s:=s||'       , ''SSTILES'''||chr(10)||
'        , ''650.121.2034'''||chr(10)||
'        , TO_DATE(''26-OCT-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 3200'||chr(10)||
'        , NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 139'||chr(10)||
'        , ''John'''||chr(10)||
'        , ''Seo'''||chr(10)||
'        , ''JSEO'''||chr(10)||
'        , ''650.121.2019'''||chr(10)||
'        , TO_DATE(''12-FEB-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2700'||chr(10)||
'        , ';

s:=s||'NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 140'||chr(10)||
'        , ''Joshua'''||chr(10)||
'        , ''Patel'''||chr(10)||
'        , ''JPATEL'''||chr(10)||
'        , ''650.121.1834'''||chr(10)||
'        , TO_DATE(''06-APR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2500'||chr(10)||
'        , NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 141'||chr(10)||
'        , ''Trenna'''||chr(10)||
'        , ''Rajs'''||chr(10)||
'   ';

s:=s||'     , ''TRAJS'''||chr(10)||
'        , ''650.121.8009'''||chr(10)||
'        , TO_DATE(''17-OCT-1995'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 3500'||chr(10)||
'        , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 142'||chr(10)||
'        , ''Curtis'''||chr(10)||
'        , ''Davies'''||chr(10)||
'        , ''CDAVIES'''||chr(10)||
'        , ''650.121.2994'''||chr(10)||
'        , TO_DATE(''29-JAN-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 3100'||chr(10)||
'      ';

s:=s||'  , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 143'||chr(10)||
'        , ''Randall'''||chr(10)||
'        , ''Matos'''||chr(10)||
'        , ''RMATOS'''||chr(10)||
'        , ''650.121.2874'''||chr(10)||
'        , TO_DATE(''15-MAR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2600'||chr(10)||
'        , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 144'||chr(10)||
'        , ''Peter'''||chr(10)||
'        , ''Varga';

s:=s||'s'''||chr(10)||
'        , ''PVARGAS'''||chr(10)||
'        , ''650.121.2004'''||chr(10)||
'        , TO_DATE(''09-JUL-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 2500'||chr(10)||
'        , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 145'||chr(10)||
'        , ''John'''||chr(10)||
'        , ''Russell'''||chr(10)||
'        , ''JRUSSEL'''||chr(10)||
'        , ''011.44.1344.429268'''||chr(10)||
'        , TO_DATE(''01-OCT-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_MAN'''||chr(10)||
'        , ';

s:=s||'14000'||chr(10)||
'        , .4'||chr(10)||
'        , 100'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 146'||chr(10)||
'        , ''Karen'''||chr(10)||
'        , ''Partners'''||chr(10)||
'        , ''KPARTNER'''||chr(10)||
'        , ''011.44.1344.467268'''||chr(10)||
'        , TO_DATE(''05-JAN-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_MAN'''||chr(10)||
'        , 13500'||chr(10)||
'        , .3'||chr(10)||
'        , 100'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 147'||chr(10)||
'        , ''Alberto';

s:=s||''''||chr(10)||
'        , ''Errazuriz'''||chr(10)||
'        , ''AERRAZUR'''||chr(10)||
'        , ''011.44.1344.429278'''||chr(10)||
'        , TO_DATE(''10-MAR-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_MAN'''||chr(10)||
'        , 12000'||chr(10)||
'        , .3'||chr(10)||
'        , 100'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 148'||chr(10)||
'        , ''Gerald'''||chr(10)||
'        , ''Cambrault'''||chr(10)||
'        , ''GCAMBRAU'''||chr(10)||
'        , ''011.44.1344.619268'''||chr(10)||
'        , TO_DATE(''15-OCT-1999'', ''dd-MON-yyyy'')';

s:=s||''||chr(10)||
'        , ''SA_MAN'''||chr(10)||
'        , 11000'||chr(10)||
'        , .3'||chr(10)||
'        , 100'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 149'||chr(10)||
'        , ''Eleni'''||chr(10)||
'        , ''Zlotkey'''||chr(10)||
'        , ''EZLOTKEY'''||chr(10)||
'        , ''011.44.1344.429018'''||chr(10)||
'        , TO_DATE(''29-JAN-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_MAN'''||chr(10)||
'        , 10500'||chr(10)||
'        , .2'||chr(10)||
'        , 100'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'   ';

s:=s||'     ( 150'||chr(10)||
'        , ''Peter'''||chr(10)||
'        , ''Tucker'''||chr(10)||
'        , ''PTUCKER'''||chr(10)||
'        , ''011.44.1344.129268'''||chr(10)||
'        , TO_DATE(''30-JAN-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 10000'||chr(10)||
'        , .3'||chr(10)||
'        , 145'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 151'||chr(10)||
'        , ''David'''||chr(10)||
'        , ''Bernstein'''||chr(10)||
'        , ''DBERNSTE'''||chr(10)||
'        , ''011.44.1344.345268'''||chr(10)||
'        , TO_DATE(''24-MAR';

s:=s||'-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 9500'||chr(10)||
'        , .25'||chr(10)||
'        , 145'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 152'||chr(10)||
'        , ''Peter'''||chr(10)||
'        , ''Hall'''||chr(10)||
'        , ''PHALL'''||chr(10)||
'        , ''011.44.1344.478968'''||chr(10)||
'        , TO_DATE(''20-AUG-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 9000'||chr(10)||
'        , .25'||chr(10)||
'        , 145'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_emplo';

s:=s||'yees VALUES '||chr(10)||
'        ( 153'||chr(10)||
'        , ''Christopher'''||chr(10)||
'        , ''Olsen'''||chr(10)||
'        , ''COLSEN'''||chr(10)||
'        , ''011.44.1344.498718'''||chr(10)||
'        , TO_DATE(''30-MAR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 8000'||chr(10)||
'        , .2'||chr(10)||
'        , 145'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 154'||chr(10)||
'        , ''Nanette'''||chr(10)||
'        , ''Cambrault'''||chr(10)||
'        , ''NCAMBRAU'''||chr(10)||
'        , ''011.44.1344.987668'''||chr(10)||
'    ';

s:=s||'    , TO_DATE(''09-DEC-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 7500'||chr(10)||
'        , .2'||chr(10)||
'        , 145'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 155'||chr(10)||
'        , ''Oliver'''||chr(10)||
'        , ''Tuvault'''||chr(10)||
'        , ''OTUVAULT'''||chr(10)||
'        , ''011.44.1344.486508'''||chr(10)||
'        , TO_DATE(''23-NOV-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 7000'||chr(10)||
'        , .15'||chr(10)||
'        , 145'||chr(10)||
'        , 80'||chr(10)||
'       ';

s:=s||' );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 156'||chr(10)||
'        , ''Janette'''||chr(10)||
'        , ''King'''||chr(10)||
'        , ''JKING'''||chr(10)||
'        , ''011.44.1345.429268'''||chr(10)||
'        , TO_DATE(''30-JAN-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 10000'||chr(10)||
'        , .35'||chr(10)||
'        , 146'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 157'||chr(10)||
'        , ''Patrick'''||chr(10)||
'        , ''Sully'''||chr(10)||
'        , ''PSULLY'''||chr(10)||
'        , ''011.44.';

s:=s||'1345.929268'''||chr(10)||
'        , TO_DATE(''04-MAR-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 9500'||chr(10)||
'        , .35'||chr(10)||
'        , 146'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 158'||chr(10)||
'        , ''Allan'''||chr(10)||
'        , ''McEwen'''||chr(10)||
'        , ''AMCEWEN'''||chr(10)||
'        , ''011.44.1345.829268'''||chr(10)||
'        , TO_DATE(''01-AUG-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 9000'||chr(10)||
'        , .35'||chr(10)||
'        , 146'||chr(10)||
'     ';

s:=s||'   , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 159'||chr(10)||
'        , ''Lindsey'''||chr(10)||
'        , ''Smith'''||chr(10)||
'        , ''LSMITH'''||chr(10)||
'        , ''011.44.1345.729268'''||chr(10)||
'        , TO_DATE(''10-MAR-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 8000'||chr(10)||
'        , .3'||chr(10)||
'        , 146'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 160'||chr(10)||
'        , ''Louise'''||chr(10)||
'        , ''Doran'''||chr(10)||
'        , ''LDORAN'''||chr(10)||
'    ';

s:=s||'    , ''011.44.1345.629268'''||chr(10)||
'        , TO_DATE(''15-DEC-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 7500'||chr(10)||
'        , .3'||chr(10)||
'        , 146'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 161'||chr(10)||
'        , ''Sarath'''||chr(10)||
'        , ''Sewall'''||chr(10)||
'        , ''SSEWALL'''||chr(10)||
'        , ''011.44.1345.529268'''||chr(10)||
'        , TO_DATE(''03-NOV-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 7000'||chr(10)||
'        , .25'||chr(10)||
'     ';

s:=s||'   , 146'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 162'||chr(10)||
'        , ''Clara'''||chr(10)||
'        , ''Vishney'''||chr(10)||
'        , ''CVISHNEY'''||chr(10)||
'        , ''011.44.1346.129268'''||chr(10)||
'        , TO_DATE(''11-NOV-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 10500'||chr(10)||
'        , .25'||chr(10)||
'        , 147'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 163'||chr(10)||
'        , ''Danielle'''||chr(10)||
'        , ''Greene'''||chr(10)||
'  ';

wwv_flow_api.create_install_script(
  p_id => 313868220824618302 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'seed customers',
  p_sequence=> 60,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'      , ''DGREENE'''||chr(10)||
'        , ''011.44.1346.229268'''||chr(10)||
'        , TO_DATE(''19-MAR-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 9500'||chr(10)||
'        , .15'||chr(10)||
'        , 147'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 164'||chr(10)||
'        , ''Mattea'''||chr(10)||
'        , ''Marvins'''||chr(10)||
'        , ''MMARVINS'''||chr(10)||
'        , ''011.44.1346.329268'''||chr(10)||
'        , TO_DATE(''24-JAN-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        ,';

s:=s||' 7200'||chr(10)||
'        , .10'||chr(10)||
'        , 147'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 165'||chr(10)||
'        , ''David'''||chr(10)||
'        , ''Lee'''||chr(10)||
'        , ''DLEE'''||chr(10)||
'        , ''011.44.1346.529268'''||chr(10)||
'        , TO_DATE(''23-FEB-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 6800'||chr(10)||
'        , .1'||chr(10)||
'        , 147'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 166'||chr(10)||
'        , ''Sundar'''||chr(10)||
'        ';

s:=s||', ''Ande'''||chr(10)||
'        , ''SANDE'''||chr(10)||
'        , ''011.44.1346.629268'''||chr(10)||
'        , TO_DATE(''24-MAR-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 6400'||chr(10)||
'        , .10'||chr(10)||
'        , 147'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 167'||chr(10)||
'        , ''Amit'''||chr(10)||
'        , ''Banda'''||chr(10)||
'        , ''ABANDA'''||chr(10)||
'        , ''011.44.1346.729268'''||chr(10)||
'        , TO_DATE(''21-APR-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'      ';

s:=s||'  , 6200'||chr(10)||
'        , .10'||chr(10)||
'        , 147'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 168'||chr(10)||
'        , ''Lisa'''||chr(10)||
'        , ''Ozer'''||chr(10)||
'        , ''LOZER'''||chr(10)||
'        , ''011.44.1343.929268'''||chr(10)||
'        , TO_DATE(''11-MAR-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 11500'||chr(10)||
'        , .25'||chr(10)||
'        , 148'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 169  '||chr(10)||
'        , ''Harrison';

s:=s||''''||chr(10)||
'        , ''Bloom'''||chr(10)||
'        , ''HBLOOM'''||chr(10)||
'        , ''011.44.1343.829268'''||chr(10)||
'        , TO_DATE(''23-MAR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 10000'||chr(10)||
'        , .20'||chr(10)||
'        , 148'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 170'||chr(10)||
'        , ''Tayler'''||chr(10)||
'        , ''Fox'''||chr(10)||
'        , ''TFOX'''||chr(10)||
'        , ''011.44.1343.729268'''||chr(10)||
'        , TO_DATE(''24-JAN-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_';

s:=s||'REP'''||chr(10)||
'        , 9600'||chr(10)||
'        , .20'||chr(10)||
'        , 148'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 171'||chr(10)||
'        , ''William'''||chr(10)||
'        , ''Smith'''||chr(10)||
'        , ''WSMITH'''||chr(10)||
'        , ''011.44.1343.629268'''||chr(10)||
'        , TO_DATE(''23-FEB-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 7400'||chr(10)||
'        , .15'||chr(10)||
'        , 148'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 172'||chr(10)||
'      ';

s:=s||'  , ''Elizabeth'''||chr(10)||
'        , ''Bates'''||chr(10)||
'        , ''EBATES'''||chr(10)||
'        , ''011.44.1343.529268'''||chr(10)||
'        , TO_DATE(''24-MAR-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 7300'||chr(10)||
'        , .15'||chr(10)||
'        , 148'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 173'||chr(10)||
'        , ''Sundita'''||chr(10)||
'        , ''Kumar'''||chr(10)||
'        , ''SKUMAR'''||chr(10)||
'        , ''011.44.1343.329268'''||chr(10)||
'        , TO_DATE(''21-APR-2000'', ''dd-MON-yyy';

s:=s||'y'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 6100'||chr(10)||
'        , .10'||chr(10)||
'        , 148'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 174'||chr(10)||
'        , ''Ellen'''||chr(10)||
'        , ''Abel'''||chr(10)||
'        , ''EABEL'''||chr(10)||
'        , ''011.44.1644.429267'''||chr(10)||
'        , TO_DATE(''11-MAY-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 11000'||chr(10)||
'        , .30'||chr(10)||
'        , 149'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'     ';

s:=s||'   ( 175'||chr(10)||
'        , ''Alyssa'''||chr(10)||
'        , ''Hutton'''||chr(10)||
'        , ''AHUTTON'''||chr(10)||
'        , ''011.44.1644.429266'''||chr(10)||
'        , TO_DATE(''19-MAR-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 8800'||chr(10)||
'        , .25'||chr(10)||
'        , 149'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 176'||chr(10)||
'        , ''Jonathon'''||chr(10)||
'        , ''Taylor'''||chr(10)||
'        , ''JTAYLOR'''||chr(10)||
'        , ''011.44.1644.429265'''||chr(10)||
'        , TO_DATE(''24-MAR-1';

s:=s||'998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 8600'||chr(10)||
'        , .20'||chr(10)||
'        , 149'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 177'||chr(10)||
'        , ''Jack'''||chr(10)||
'        , ''Livingston'''||chr(10)||
'        , ''JLIVINGS'''||chr(10)||
'        , ''011.44.1644.429264'''||chr(10)||
'        , TO_DATE(''23-APR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 8400'||chr(10)||
'        , .20'||chr(10)||
'        , 149'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr';

s:=s||'_employees VALUES '||chr(10)||
'        ( 178'||chr(10)||
'        , ''Kimberely'''||chr(10)||
'        , ''Grant'''||chr(10)||
'        , ''KGRANT'''||chr(10)||
'        , ''011.44.1644.429263'''||chr(10)||
'        , TO_DATE(''24-MAY-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 7000'||chr(10)||
'        , .15'||chr(10)||
'        , 149'||chr(10)||
'        , NULL'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 179'||chr(10)||
'        , ''Charles'''||chr(10)||
'        , ''Johnson'''||chr(10)||
'        , ''CJOHNSON'''||chr(10)||
'        , ''011.44.1644.429262''';

s:=s||''||chr(10)||
'        , TO_DATE(''04-JAN-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 6200'||chr(10)||
'        , .10'||chr(10)||
'        , 149'||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 180'||chr(10)||
'        , ''Winston'''||chr(10)||
'        , ''Taylor'''||chr(10)||
'        , ''WTAYLOR'''||chr(10)||
'        , ''650.507.9876'''||chr(10)||
'        , TO_DATE(''24-JAN-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3200'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'        , 50'||chr(10)||
'     ';

s:=s||'   );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 181'||chr(10)||
'        , ''Jean'''||chr(10)||
'        , ''Fleaur'''||chr(10)||
'        , ''JFLEAUR'''||chr(10)||
'        , ''650.507.9877'''||chr(10)||
'        , TO_DATE(''23-FEB-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3100'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 182'||chr(10)||
'        , ''Martha'''||chr(10)||
'        , ''Sullivan'''||chr(10)||
'        , ''MSULLIVA'''||chr(10)||
'        , ''650.';

s:=s||'507.9878'''||chr(10)||
'        , TO_DATE(''21-JUN-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 2500'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 183'||chr(10)||
'        , ''Girard'''||chr(10)||
'        , ''Geoni'''||chr(10)||
'        , ''GGEONI'''||chr(10)||
'        , ''650.507.9879'''||chr(10)||
'        , TO_DATE(''03-FEB-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 2800'||chr(10)||
'        , NULL'||chr(10)||
'        , 120'||chr(10)||
'        ,';

s:=s||' 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 184'||chr(10)||
'        , ''Nandita'''||chr(10)||
'        , ''Sarchand'''||chr(10)||
'        , ''NSARCHAN'''||chr(10)||
'        , ''650.509.1876'''||chr(10)||
'        , TO_DATE(''27-JAN-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 4200'||chr(10)||
'        , NULL'||chr(10)||
'        , 121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 185'||chr(10)||
'        , ''Alexis'''||chr(10)||
'        , ''Bull'''||chr(10)||
'        , ''ABULL'''||chr(10)||
'       ';

s:=s||' , ''650.509.2876'''||chr(10)||
'        , TO_DATE(''20-FEB-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 4100'||chr(10)||
'        , NULL'||chr(10)||
'        , 121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 186'||chr(10)||
'        , ''Julia'''||chr(10)||
'        , ''Dellinger'''||chr(10)||
'        , ''JDELLING'''||chr(10)||
'        , ''650.509.3876'''||chr(10)||
'        , TO_DATE(''24-JUN-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3400'||chr(10)||
'        , NULL'||chr(10)||
'        , ';

s:=s||'121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 187'||chr(10)||
'        , ''Anthony'''||chr(10)||
'        , ''Cabrio'''||chr(10)||
'        , ''ACABRIO'''||chr(10)||
'        , ''650.509.4876'''||chr(10)||
'        , TO_DATE(''07-FEB-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3000'||chr(10)||
'        , NULL'||chr(10)||
'        , 121'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 188'||chr(10)||
'        , ''Kelly'''||chr(10)||
'        , ''Chung'''||chr(10)||
'        , ''KCHU';

s:=s||'NG'''||chr(10)||
'        , ''650.505.1876'''||chr(10)||
'        , TO_DATE(''14-JUN-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3800'||chr(10)||
'        , NULL'||chr(10)||
'        , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 189'||chr(10)||
'        , ''Jennifer'''||chr(10)||
'        , ''Dilly'''||chr(10)||
'        , ''JDILLY'''||chr(10)||
'        , ''650.505.2876'''||chr(10)||
'        , TO_DATE(''13-AUG-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3600'||chr(10)||
'        , NULL'||chr(10)||
'  ';

s:=s||'      , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 190'||chr(10)||
'        , ''Timothy'''||chr(10)||
'        , ''Gates'''||chr(10)||
'        , ''TGATES'''||chr(10)||
'        , ''650.505.3876'''||chr(10)||
'        , TO_DATE(''11-JUL-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 2900'||chr(10)||
'        , NULL'||chr(10)||
'        , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 191'||chr(10)||
'        , ''Randall'''||chr(10)||
'        , ''Perkins'''||chr(10)||
'     ';

s:=s||'   , ''RPERKINS'''||chr(10)||
'        , ''650.505.4876'''||chr(10)||
'        , TO_DATE(''19-DEC-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 2500'||chr(10)||
'        , NULL'||chr(10)||
'        , 122'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 192'||chr(10)||
'        , ''Sarah'''||chr(10)||
'        , ''Bell'''||chr(10)||
'        , ''SBELL'''||chr(10)||
'        , ''650.501.1876'''||chr(10)||
'        , TO_DATE(''04-FEB-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 4000'||chr(10)||
'        , ';

s:=s||'NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 193'||chr(10)||
'        , ''Britney'''||chr(10)||
'        , ''Everett'''||chr(10)||
'        , ''BEVERETT'''||chr(10)||
'        , ''650.501.2876'''||chr(10)||
'        , TO_DATE(''03-MAR-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3900'||chr(10)||
'        , NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 194'||chr(10)||
'        , ''Samuel'''||chr(10)||
'        , ''McCa';

s:=s||'in'''||chr(10)||
'        , ''SMCCAIN'''||chr(10)||
'        , ''650.501.3876'''||chr(10)||
'        , TO_DATE(''01-JUL-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3200'||chr(10)||
'        , NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 195'||chr(10)||
'        , ''Vance'''||chr(10)||
'        , ''Jones'''||chr(10)||
'        , ''VJONES'''||chr(10)||
'        , ''650.501.4876'''||chr(10)||
'        , TO_DATE(''17-MAR-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 2800'||chr(10)||
'';

s:=s||'        , NULL'||chr(10)||
'        , 123'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 196'||chr(10)||
'        , ''Alana'''||chr(10)||
'        , ''Walsh'''||chr(10)||
'        , ''AWALSH'''||chr(10)||
'        , ''650.507.9811'''||chr(10)||
'        , TO_DATE(''24-APR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3100'||chr(10)||
'        , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 197'||chr(10)||
'        , ''Kevin'''||chr(10)||
'        , ''F';

s:=s||'eeney'''||chr(10)||
'        , ''KFEENEY'''||chr(10)||
'        , ''650.507.9822'''||chr(10)||
'        , TO_DATE(''23-MAY-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 3000'||chr(10)||
'        , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 198'||chr(10)||
'        , ''Donald'''||chr(10)||
'        , ''OConnell'''||chr(10)||
'        , ''DOCONNEL'''||chr(10)||
'        , ''650.507.9833'''||chr(10)||
'        , TO_DATE(''21-JUN-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'      ';

s:=s||'  , 2600'||chr(10)||
'        , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 199'||chr(10)||
'        , ''Douglas'''||chr(10)||
'        , ''Grant'''||chr(10)||
'        , ''DGRANT'''||chr(10)||
'        , ''650.507.9844'''||chr(10)||
'        , TO_DATE(''13-JAN-2000'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SH_CLERK'''||chr(10)||
'        , 2600'||chr(10)||
'        , NULL'||chr(10)||
'        , 124'||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 200'||chr(10)||
'        , ''Jennifer';

s:=s||''''||chr(10)||
'        , ''Whalen'''||chr(10)||
'        , ''JWHALEN'''||chr(10)||
'        , ''515.123.4444'''||chr(10)||
'        , TO_DATE(''17-SEP-1987'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''AD_ASST'''||chr(10)||
'        , 4400'||chr(10)||
'        , NULL'||chr(10)||
'        , 101'||chr(10)||
'        , 10'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 201'||chr(10)||
'        , ''Michael'''||chr(10)||
'        , ''Hartstein'''||chr(10)||
'        , ''MHARTSTE'''||chr(10)||
'        , ''515.123.5555'''||chr(10)||
'        , TO_DATE(''17-FEB-1996'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''M';

s:=s||'K_MAN'''||chr(10)||
'        , 13000'||chr(10)||
'        , NULL'||chr(10)||
'        , 100'||chr(10)||
'        , 20'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 202'||chr(10)||
'        , ''Pat'''||chr(10)||
'        , ''Fay'''||chr(10)||
'        , ''PFAY'''||chr(10)||
'        , ''603.123.6666'''||chr(10)||
'        , TO_DATE(''17-AUG-1997'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''MK_REP'''||chr(10)||
'        , 6000'||chr(10)||
'        , NULL'||chr(10)||
'        , 201'||chr(10)||
'        , 20'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 203'||chr(10)||
'        , ''Susa';

s:=s||'n'''||chr(10)||
'        , ''Mavris'''||chr(10)||
'        , ''SMAVRIS'''||chr(10)||
'        , ''515.123.7777'''||chr(10)||
'        , TO_DATE(''07-JUN-1994'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''HR_REP'''||chr(10)||
'        , 6500'||chr(10)||
'        , NULL'||chr(10)||
'        , 101'||chr(10)||
'        , 40'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 204'||chr(10)||
'        , ''Hermann'''||chr(10)||
'        , ''Baer'''||chr(10)||
'        , ''HBAER'''||chr(10)||
'        , ''515.123.8888'''||chr(10)||
'        , TO_DATE(''07-JUN-1994'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''PR_REP'''||chr(10)||
' ';

s:=s||'       , 10000'||chr(10)||
'        , NULL'||chr(10)||
'        , 101'||chr(10)||
'        , 70'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 205'||chr(10)||
'        , ''Shelley'''||chr(10)||
'        , ''Higgins'''||chr(10)||
'        , ''SHIGGINS'''||chr(10)||
'        , ''515.123.8080'''||chr(10)||
'        , TO_DATE(''07-JUN-1994'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''AC_MGR'''||chr(10)||
'        , 12000'||chr(10)||
'        , NULL'||chr(10)||
'        , 101'||chr(10)||
'        , 110'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_employees VALUES '||chr(10)||
'        ( 206'||chr(10)||
'        ,';

s:=s||' ''William'''||chr(10)||
'        , ''Gietz'''||chr(10)||
'        , ''WGIETZ'''||chr(10)||
'        , ''515.123.8181'''||chr(10)||
'        , TO_DATE(''07-JUN-1994'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''AC_ACCOUNT'''||chr(10)||
'        , 8300'||chr(10)||
'        , NULL'||chr(10)||
'        , 205'||chr(10)||
'        , 110'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'REM ********* insert data into the oehr_job_history table'||chr(10)||
''||chr(10)||
''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES (102'||chr(10)||
'       , TO_DATE(''13-JAN-1993'', ''dd-MON-yyyy'')'||chr(10)||
'       , TO_DATE(''24-JUL-1998'', ''dd-M';

s:=s||'ON-yyyy'')'||chr(10)||
'       , ''IT_PROG'''||chr(10)||
'       , 60);'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES (101'||chr(10)||
'       , TO_DATE(''21-SEP-1989'', ''dd-MON-yyyy'')'||chr(10)||
'       , TO_DATE(''27-OCT-1993'', ''dd-MON-yyyy'')'||chr(10)||
'       , ''AC_ACCOUNT'''||chr(10)||
'       , 110);'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES (101'||chr(10)||
'       , TO_DATE(''28-OCT-1993'', ''dd-MON-yyyy'')'||chr(10)||
'       , TO_DATE(''15-MAR-1997'', ''dd-MON-yyyy'')'||chr(10)||
'       , ''AC_MGR'''||chr(10)||
'       , 110);'||chr(10)||
''||chr(10)||
'INSERT INTO oe';

s:=s||'hr_job_history'||chr(10)||
'VALUES (201'||chr(10)||
'       , TO_DATE(''17-FEB-1996'', ''dd-MON-yyyy'')'||chr(10)||
'       , TO_DATE(''19-DEC-1999'', ''dd-MON-yyyy'')'||chr(10)||
'       , ''MK_REP'''||chr(10)||
'       , 20);'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES  (114'||chr(10)||
'        , TO_DATE(''24-MAR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , TO_DATE(''31-DEC-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES  (122'||chr(10)||
'        , TO_DATE(''0';

s:=s||'1-JAN-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , TO_DATE(''31-DEC-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''ST_CLERK'''||chr(10)||
'        , 50'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES  (200'||chr(10)||
'        , TO_DATE(''17-SEP-1987'', ''dd-MON-yyyy'')'||chr(10)||
'        , TO_DATE(''17-JUN-1993'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''AD_ASST'''||chr(10)||
'        , 90'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES  (176'||chr(10)||
'        , TO_DATE(''24-MAR-1998'', ''dd-MON-yyyy'')'||chr(10)||
'     ';

s:=s||'   , TO_DATE(''31-DEC-1998'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_REP'''||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES  (176'||chr(10)||
'        , TO_DATE(''01-JAN-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , TO_DATE(''31-DEC-1999'', ''dd-MON-yyyy'')'||chr(10)||
'        , ''SA_MAN'''||chr(10)||
'        , 80'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_job_history'||chr(10)||
'VALUES  (200'||chr(10)||
'        , TO_DATE(''01-JUL-1994'', ''dd-MON-yyyy'')'||chr(10)||
'        , TO_DATE(''31-DEC-1998'', ''dd-MON-';

s:=s||'yyyy'')'||chr(10)||
'        , ''AC_ACCOUNT'''||chr(10)||
'        , 90'||chr(10)||
'        );'||chr(10)||
''||chr(10)||
'REM enable integrity constraint to oehr_departments'||chr(10)||
''||chr(10)||
'ALTER TABLE oehr_departments '||chr(10)||
'  ENABLE CONSTRAINT oehr_dept_mgr_fk;'||chr(10)||
''||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_warehouses VALUES (1,NULL,''Southlake, Texas'',1400, '||chr(10)||
'	MDSYS.SDO_GEOMETRY(2001, 8307, '||chr(10)||
'	MDSYS.SDO_POINT_TYPE(-103.00195, 36.500374, NULL), NULL, NULL)); '||chr(10)||
'INSERT INTO oehr_warehouses VALUES (2,NULL,''S';

s:=s||'an Francisco'',1500, '||chr(10)||
'	MDSYS.SDO_GEOMETRY(2001, 8307, '||chr(10)||
'	MDSYS.SDO_POINT_TYPE(-124.21014, 41.998016, NULL), NULL, NULL)); '||chr(10)||
'INSERT INTO oehr_warehouses VALUES (3,NULL,''New Jersey'',1600, '||chr(10)||
'	MDSYS.SDO_GEOMETRY(2001, 8307, '||chr(10)||
'	MDSYS.SDO_POINT_TYPE(-74.695305, 41.35733, NULL), NULL, NULL)); '||chr(10)||
'INSERT INTO oehr_warehouses VALUES (4,NULL,''Seattle, Washington'',1700, '||chr(10)||
'	MDSYS.SDO_GEOMETRY(2001, 8307, '||chr(10)||
'	MDSYS.SDO_P';

s:=s||'OINT_TYPE(-123.61526, 46.257458, NULL), NULL, NULL)); '||chr(10)||
'INSERT INTO oehr_warehouses VALUES (5,NULL,''Toronto'',1800,NULL);'||chr(10)||
'INSERT INTO oehr_warehouses VALUES (6,NULL,''Sydney'',2200,NULL);'||chr(10)||
'INSERT INTO oehr_warehouses VALUES (7,NULL,''Mexico City'',3200,NULL);'||chr(10)||
'INSERT INTO oehr_warehouses VALUES (8,NULL,''Beijing'',2000,NULL);'||chr(10)||
'INSERT INTO oehr_warehouses VALUES (9,NULL,''Bombay'',2100,NULL);'||chr(10)||
''||chr(10)||
'commit;'||chr(10)||
''||chr(10)||
'UPDATE o';

s:=s||'ehr_warehouses SET warehouse_spec = sys.xmltype.createxml( '||chr(10)||
'''<?xml version="1.0"?> '||chr(10)||
'<Warehouse> '||chr(10)||
'<Building>Owned</Building> '||chr(10)||
'<Area>25000</Area> '||chr(10)||
'<Docks>2</Docks> '||chr(10)||
'<DockType>Rear load</DockType> '||chr(10)||
'<WaterAccess>Y</WaterAccess> '||chr(10)||
'<RailAccess>N</RailAccess> '||chr(10)||
'<Parking>Street</Parking> '||chr(10)||
'<VClearance>10 ft</VClearance> '||chr(10)||
'</Warehouse>'' '||chr(10)||
') WHERE warehouse_id = 1; '||chr(10)||
''||chr(10)||
'UPDATE oehr_warehouses SET warehouse_spec = s';

s:=s||'ys.xmltype.createxml( '||chr(10)||
'''<?xml version="1.0"?> '||chr(10)||
'<Warehouse> '||chr(10)||
'<Building>Rented</Building> '||chr(10)||
'<Area>50000</Area> '||chr(10)||
'<Docks>1</Docks> '||chr(10)||
'<DockType>Side load</DockType> '||chr(10)||
'<WaterAccess>Y</WaterAccess> '||chr(10)||
'<RailAccess>N</RailAccess> '||chr(10)||
'<Parking>Lot</Parking> '||chr(10)||
'<VClearance>12 ft</VClearance> '||chr(10)||
'</Warehouse>'' '||chr(10)||
') WHERE warehouse_id = 2; '||chr(10)||
''||chr(10)||
'UPDATE oehr_warehouses SET warehouse_spec = sys.xmltype.createxml( '||chr(10)||
'''<?xml version="';

s:=s||'1.0"?> '||chr(10)||
'<Warehouse> '||chr(10)||
'<Building>Rented</Building> '||chr(10)||
'<Area>85700</Area> '||chr(10)||
'<DockType></DockType> '||chr(10)||
'<WaterAccess>N</WaterAccess> '||chr(10)||
'<RailAccess>N</RailAccess> '||chr(10)||
'<Parking>Street</Parking> '||chr(10)||
'<VClearance>11.5 ft</VClearance> '||chr(10)||
'</Warehouse>'' '||chr(10)||
') WHERE warehouse_id = 3; '||chr(10)||
''||chr(10)||
'UPDATE oehr_warehouses SET warehouse_spec = sys.xmltype.createxml( '||chr(10)||
'''<?xml version="1.0"?> '||chr(10)||
'<Warehouse> '||chr(10)||
'<Building>Owned</Building> '||chr(10)||
'<Area>103000';

s:=s||'</Area> '||chr(10)||
'<Docks>3</Docks> '||chr(10)||
'<DockType>Side load</DockType> '||chr(10)||
'<WaterAccess>N</WaterAccess> '||chr(10)||
'<RailAccess>Y</RailAccess> '||chr(10)||
'<Parking>Lot</Parking> '||chr(10)||
'<VClearance>15 ft</VClearance> '||chr(10)||
'</Warehouse>'' '||chr(10)||
') WHERE warehouse_id = 4; '||chr(10)||
''||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (101,''Constantin'',''Welles'',oehr_cust_address_typ'||chr(10)||
'    (''514 W Superior St'',''46901'',''Kokomo'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 317 123 4104'')';

s:=s||',''us'',''AMERICA'',''100'',''Constantin.Welles@ANHINGA.COM'','||chr(10)||
'    149,'||chr(10)||
'    MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE (-86.13631, 40.485424,NULL),'||chr(10)||
'    NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (102,''Harrison'',''Pacino'',oehr_cust_address_typ'||chr(10)||
'    (''2515 Bloyd Ave'',''46218'',''Indianapolis'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 317 123 4111''),''us'',''AMERICA'',''100'',''Harrison.Pacino@ANI.COM'','||chr(10)||
'';

s:=s||'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.120133, 39.795766,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (103,''Manisha'',''Taylor'',oehr_cust_address_typ'||chr(10)||
'    (''8768 N State Rd 37'',''47404'',''Bloomington'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 812 123 4115''),''us'',''AMERICA'',''100'',''Manisha.Taylor@AUKLET.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.S';

s:=s||'DO_POINT_TYPE'||chr(10)||
'    (-86.5173, 39.302695,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (104,''Harrison'',''Sutherland'',oehr_cust_address_typ'||chr(10)||
'    (''6445 Bay Harbor Ln'',''46254'',''Indianapolis'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 317 123 4126''),''us'',''AMERICA'',''100'',''Harrison.Sutherland@GODWIT.COM'', '||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.272743, 39.849678,';

s:=s||'NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (105,''Matthias'',''MacGraw'',oehr_cust_address_typ'||chr(10)||
'    (''4019 W 3Rd St'',''47404'',''Bloomington'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 812 123 4129''),''us'',''AMERICA'',''100'',''Matthias.MacGraw@GOLDENEYE.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.58332, 39.164783,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VAL';

s:=s||'UES '||chr(10)||
'    (106,''Matthias'',''Hannah'',oehr_cust_address_typ'||chr(10)||
'    (''1608 Portage Ave'',''46616'',''South Bend'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 219 123 4136''),''us'',''AMERICA'',''100'',''Matthias.Hannah@GREBE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.27021, 41.696023,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (107,''Matthias'',''Cruise'',oehr_cust_address_ty';

s:=s||'p'||chr(10)||
'    (''23943 Us Highway 33'',''46517'',''Elkhart'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 219 123 4138''),''us'',''AMERICA'',''100'',''Matthias.Cruise@GROSBEAK.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.91393, 41.631143,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (108,''Meenakshi'',''Mason'',oehr_cust_address_typ'||chr(10)||
'    (''136 E Market St # 800'',''46204'',''Indianapol';

s:=s||'is'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 317 123 4141''),''us'',''AMERICA'',''100'',''Meenakshi.Mason@JACANA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.155533, 39.768174,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (109,''Christian'',''Cage'',oehr_cust_address_typ'||chr(10)||
'    (''1905 College St'',''46628'',''South Bend'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 219 123 41';

s:=s||'42''),''us'',''AMERICA'',''100'',''Christian.Cage@KINGLET.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.27639, 41.701348,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (110,''Charlie'',''Sutherland'',oehr_cust_address_typ'||chr(10)||
'    (''3512 Rockville Rd # 137C'',''46222'',''Indianapolis'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 317 123 4146''),''us'',''AMERICA'',''200'',''Charlie.Suthe';

s:=s||'rland@LIMPKIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.219783, 39.762173,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (111,''Charlie'',''Pacino'',oehr_cust_address_typ'||chr(10)||
'    (''1303 E University St'',''47401'',''Bloomington'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 812 123 4150''),''us'',''AMERICA'',''200'',''Charlie.Pacino@LONGSPUR.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'';

s:=s||'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.5175, 39.160261,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (112,''Guillaume'',''Jackson'',oehr_cust_address_typ'||chr(10)||
'    (''115 N Weinbach Ave'',''47711'',''Evansville'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 812 123 4151''),''us'',''AMERICA'',''200'',''Guillaume.Jackson@MOORHEN.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.';

s:=s||'52901, 37.978385,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (113,''Daniel'',''Costner'',oehr_cust_address_typ'||chr(10)||
'    (''2067 Rollett Ln'',''47712'',''Evansville'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 812 123 4153''),''us'',''AMERICA'',''200'',''Daniel.Costner@PARULA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.6354, 37.955373,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_cust';

s:=s||'omers VALUES '||chr(10)||
'    (114,''Dianne'',''Derek'',oehr_cust_address_typ'||chr(10)||
'    (''1105 E Allendale Dr'',''47401'',''Bloomington'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 812 123 4157''),''us'',''AMERICA'',''200'',''Dianne.Derek@SAW-WHET.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.52167, 39.131013,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (115,''Geraldine'',''Schneider'',oehr_c';

s:=s||'ust_address_typ'||chr(10)||
'    (''18305 Van Dyke St'',''48234'',''Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4159''),''us'',''AMERICA'',''200'',''Geraldine.Schneider@SCAUP.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.024565, 42.438298,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (116,''Geraldine'',''Martin'',oehr_cust_address_typ'||chr(10)||
'    (''Lucas Dr Bldg 348'',''48242'',''';

s:=s||'Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4160''),''us'',''AMERICA'',''200'',''Geraldine.Martin@SCOTER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.366535, 42.206862,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (117,''Guillaume'',''Edwards'',oehr_cust_address_typ'||chr(10)||
'    (''1801 Monroe Ave Nw'',''49505'',''Grand Rapids'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (';

s:=s||'''+1 616 123 4162''),''us'',''AMERICA'',''200'',''Guillaume.Edwards@SHRIKE.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.67059, 42.995694,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (118,''Maurice'',''Mahoney'',oehr_cust_address_typ'||chr(10)||
'    (''4925 Kendrick St Se'',''49512'',''Grand Rapids'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 616 123 4181''),''us'',''AMERICA'',''200'',''Mauri';

s:=s||'ce.Mahoney@SNIPE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.54467, 42.872615,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (119,''Maurice'',''Hasan'',oehr_cust_address_typ'||chr(10)||
'    (''3310 Dixie Ct'',''48601'',''Saginaw'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4191''),''us'',''AMERICA'',''200'',''Maurice.Hasan@STILT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 830';

s:=s||'7, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.89048, 43.366886,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (120,''Diane'',''Higgins'',oehr_cust_address_typ'||chr(10)||
'    (''113 Washington Sq N'',''48933'',''Lansing'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4199''),''us'',''AMERICA'',''200'',''Diane.Higgins@TANAGER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-84.55249, 42.733738,NULL),';

s:=s||'NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (121,''Dianne'',''Sen'',oehr_cust_address_typ'||chr(10)||
'    (''2500 S Pennsylvania Ave'',''48910'',''Lansing'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4201''),''us'',''AMERICA'',''200'',''Dianne.Sen@TATTLER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-84.53837, 42.706292,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (122,''';

s:=s||'Maurice'',''Daltrey'',oehr_cust_address_typ'||chr(10)||
'    (''3213 S Cedar St'',''48910'',''Lansing'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4206''),''us'',''AMERICA'',''200'',''Maurice.Daltrey@TEAL.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-84.54811, 42.698823,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (123,''Elizabeth'',''Brown'',oehr_cust_address_typ'||chr(10)||
'    (''8110 Jackso';

s:=s||'n Rd'',''48103'',''Ann Arbor'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4219''),''us'',''AMERICA'',''200'',''Elizabeth.Brown@THRASHER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.890694, 42.292947,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (124,''Diane'',''Mason'',oehr_cust_address_typ'||chr(10)||
'    (''6654 W Lafayette St'',''48226'',''Detroit'',''MI'',''US''),oehr_phone_list_t';

s:=s||'yp'||chr(10)||
'    (''+1 313 123 4222''),''us'',''AMERICA'',''200'',''Diane.Mason@TROGON.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.049285, 42.330868,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (125,''Dianne'',''Andrews'',oehr_cust_address_typ'||chr(10)||
'    (''27 Benton Rd'',''48602'',''Saginaw'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4225''),''us'',''AMERICA'',''200'',''Dianne.Andrews@';

s:=s||'TURNSTONE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.99558, 43.412702,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (126,''Charles'',''Field'',oehr_cust_address_typ'||chr(10)||
'    (''8201 Livernois Ave'',''48204'',''Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4226''),''us'',''AMERICA'',''300'',''Charles.Field@BECARD.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 830';

s:=s||'7, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.137545, 42.354686,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (127,''Charles'',''Broderick'',oehr_cust_address_typ'||chr(10)||
'    (''101 N Falahee Rd'',''49203'',''Jackson'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4228''),''us'',''AMERICA'',''300'',''Charles.Broderick@BITTERN.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-84.34679, 42.238519';

s:=s||',NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (128,''Isabella'',''Reed'',oehr_cust_address_typ'||chr(10)||
'    (''3100 E Eisenhower Pky # 100'',''48108'',''Ann Arbor'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4230''),''us'',''AMERICA'',''300'',''Isabella.Reed@BRANT.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.716754, 42.244284,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers';

s:=s||' VALUES '||chr(10)||
'    (129,''Louis'',''Jackson'',oehr_cust_address_typ'||chr(10)||
'    (''952 Vassar Dr'',''49001'',''Kalamazoo'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 616 123 4234''),''us'',''AMERICA'',''400'',''Louis.Jackson@CARACARA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.56744, 42.262007,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (130,''Louis'',''Edwards'',oehr_cust_address_typ'||chr(10)||
' ';

s:=s||'   (''150 W Jefferson Ave # 2500'',''48226'',''Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4242''),''us'',''AMERICA'',''400'',''Louis.Edwards@CHACHALACA.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.046195, 42.32827,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (131,''Doris'',''Dutt'',oehr_cust_address_typ'||chr(10)||
'    (''40 Pearl St Nw # 1020'',''49503'',''Grand Rapid';

s:=s||'s'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 616 123 4245''),''us'',''AMERICA'',''400'',''Doris.Dutt@CHUKAR.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.66949, 42.966096,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (132,''Doris'',''Spacek'',oehr_cust_address_typ'||chr(10)||
'    (''1135 Catherine St'',''48109'',''Ann Arbor'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4248''),''u';

s:=s||'s'',''AMERICA'',''400'',''Doris.Spacek@FLICKER.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.715384, 42.290596,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (133,''Kristin'',''Malden'',oehr_cust_address_typ'||chr(10)||
'    (''301 E Genesee Ave'',''48607'',''Saginaw'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4253''),''us'',''AMERICA'',''400'',''Kristin.Malden@GODWIT.COM'','||chr(10)||
'    149,';

s:=s||'MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.93747, 43.432862,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (134,''Sissy'',''Puri'',oehr_cust_address_typ'||chr(10)||
'    (''9936 Dexter Ave'',''48206'',''Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4255''),''us'',''AMERICA'',''400'',''Sissy.Puri@GREBE.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.1';

s:=s||'21065, 42.374977,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (135,''Doris'',''Bel Geddes'',oehr_cust_address_typ'||chr(10)||
'    (''1660 University Ter'',''48104'',''Ann Arbor'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4263''),''us'',''AMERICA'',''400'',''Doris.BelGeddes@GROSBEAK.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.727334, 42.281681,NULL),NULL,NULL));'||chr(10)||
'INSERT INT';

s:=s||'O oehr_customers VALUES '||chr(10)||
'    (136,''Sissy'',''Warden'',oehr_cust_address_typ'||chr(10)||
'    (''15713 N East St'',''48906'',''Lansing'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 517 123 4265''),''us'',''AMERICA'',''400'',''Sissy.Warden@JACANA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-84.54281, 42.7886,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (137,''Elia'',''Brando'',oehr_cust_addre';

s:=s||'ss_typ'||chr(10)||
'    (''555 John F Kennedy Rd'',''52002'',''Dubuque'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 319 123 4271''),''us'',''AMERICA'',''500'',''Elia.Brando@JUNCO.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-90.72012, 42.496103,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (138,''Mani'',''Fonda'',oehr_cust_address_typ'||chr(10)||
'    (''10315 Hickman Rd'',''50322'',''Des Moines'',''IA'',''US''';

s:=s||'),oehr_phone_list_typ'||chr(10)||
'    (''+1 515 123 4273''),''us'',''AMERICA'',''500'',''Mani.Fonda@KINGLET.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.75829, 41.614875,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (139,''Placido'',''Kubrick'',oehr_cust_address_typ'||chr(10)||
'    (''2115 N Towne Ln Ne'',''52402'',''Cedar Rapids'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 319 123 4278''),''us'',''A';

s:=s||'MERICA'',''500'',''Placido.Kubrick@SCOTER.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-91.6714, 42.032886,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (140,''Claudia'',''Kurosawa'',oehr_cust_address_typ'||chr(10)||
'    (''1928 Sherwood Dr'',''51503'',''Council Bluffs'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 712 123 4280''),''us'',''AMERICA'',''500'',''Claudia.Kurosawa@CHUKAR.COM'','||chr(10)||
'   ';

wwv_flow_api.append_to_install_script(
  p_id => 313868220824618302 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||' NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-95.81115, 41.276064,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (141,''Maximilian'',''Henner'',oehr_cust_address_typ'||chr(10)||
'    (''2102 E Kimberly Rd'',''52807'',''Davenport'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 319 123 4282''),''us'',''AMERICA'',''500'',''Maximilian.Henner@DUNLIN.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.';

s:=s||'SDO_POINT_TYPE'||chr(10)||
'    (-90.54472, 41.5566,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (142,''Sachin'',''Spielberg'',oehr_cust_address_typ'||chr(10)||
'    (''1691 Asbury Rd'',''52001'',''Dubuque'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 319 123 4288''),''us'',''AMERICA'',''500'',''Sachin.Spielberg@GADWALL.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-90.69686, 42.500903,NULL),NULL,NULL)';

s:=s||');'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (143,''Sachin'',''Neeson'',oehr_cust_address_typ'||chr(10)||
'    (''5112 Sw 9Th St'',''50315'',''Des Moines'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 515 123 4290''),''us'',''AMERICA'',''500'',''Sachin.Neeson@GALLINULE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.62554, 41.537188,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (144,''Sivaji'',';

s:=s||'''Landis'',oehr_cust_address_typ'||chr(10)||
'    (''221 3Rd Ave Se # 300'',''52401'',''Cedar Rapids'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 319 123 4301''),''us'',''AMERICA'',''500'',''Sivaji.Landis@GOLDENEYE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-91.66643, 41.977151,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (145,''Mammutti'',''Pacino'',oehr_cust_address_typ'||chr(10)||
'    (''2120 Heig';

s:=s||'hts Dr'',''54701'',''Eau Claire'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 745 123 4306''),''us'',''AMERICA'',''500'',''Mammutti.Pacino@GREBE.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-91.51556, 44.795509,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (146,''Elia'',''Fawcett'',oehr_cust_address_typ'||chr(10)||
'    (''8989 N Port Washington Rd'',''53217'',''Milwaukee'',''WI'',''US''),oehr_phon';

s:=s||'e_list_typ'||chr(10)||
'    (''+1 414 123 4307''),''us'',''AMERICA'',''500'',''Elia.Fawcett@JACANA.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.91422, 43.180714,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (147,''Ishwarya'',''Roberts'',oehr_cust_address_typ'||chr(10)||
'    (''6555 W Good Hope Rd'',''53223'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4308''),''us'',''AMERICA'',''6';

s:=s||'00'',''Ishwarya.Roberts@LAPWING.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.99294, 43.148558,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (148,''Gustav'',''Steenburgen'',oehr_cust_address_typ'||chr(10)||
'    (''1314 N Stoughton Rd'',''53714'',''Madison'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 608 123 4309''),''us'',''AMERICA'',''600'',''Gustav.Steenburgen@PINTAIL.COM'','||chr(10)||
'    149,M';

s:=s||'DSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-89.32103, 43.11362,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (149,''Markus'',''Rampling'',oehr_cust_address_typ'||chr(10)||
'    (''4715 Sprecher Rd'',''53704'',''Madison'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 608 123 4318''),''us'',''AMERICA'',''600'',''Markus.Rampling@PUFFIN.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
' ';

s:=s||'   (-89.31665, 43.130717,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (150,''Goldie'',''Slater'',oehr_cust_address_typ'||chr(10)||
'    (''6161 N 64Th St'',''53218'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4323''),''us'',''AMERICA'',''700'',''Goldie.Slater@PYRRHULOXIA.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.99083, 43.130205,NULL),NULL,NULL));'||chr(10)||
'INSERT INT';

s:=s||'O oehr_customers VALUES '||chr(10)||
'    (151,''Divine'',''Aykroyd'',oehr_cust_address_typ'||chr(10)||
'    (''11016 W Lincoln Ave'',''53227'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4324''),''us'',''AMERICA'',''700'',''Divine.Aykroyd@REDSTART.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-88.049291, 43.00271,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (152,''Dieter'',''Matthau';

s:=s||''',oehr_cust_address_typ'||chr(10)||
'    (''8600 W National Ave'',''53227'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4328''),''us'',''AMERICA'',''700'',''Dieter.Matthau@VERDIN.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (0, NULL,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (153,''Divine'',''Sheen'',oehr_cust_address_typ'||chr(10)||
'    (''615 N Sherman Ave'',''53704'',''Madison'',';

s:=s||'''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 608 123 4332''),''us'',''AMERICA'',''700'',''Divine.Sheen@COWBIRD.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-89.3638, 43.107253,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (154,''Frederic'',''Grodin'',oehr_cust_address_typ'||chr(10)||
'    (''512 E Grand Ave'',''53511'',''Beloit'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 608 123 4344''),''us'',''';

s:=s||'AMERICA'',''700'',''Frederic.Grodin@CREEPER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-89.03216, 42.499575,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (155,''Frederico'',''Romero'',oehr_cust_address_typ'||chr(10)||
'    (''600 N Broadway Fl 1'',''53202'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4347''),''us'',''AMERICA'',''700'',''Frederico.Romero@CURLEW.COM'','||chr(10)||
'   ';

s:=s||' 145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.90777, 43.037372,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (156,''Goldie'',''Montand'',oehr_cust_address_typ'||chr(10)||
'    (''5235 N Ironwood Ln'',''53217'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4348''),''us'',''AMERICA'',''700'',''Goldie.Montand@DIPPER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POI';

s:=s||'NT_TYPE'||chr(10)||
'    (-87.91841, 43.113239,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (157,''Sidney'',''Capshaw'',oehr_cust_address_typ'||chr(10)||
'    (''322 E Michigan St'',''53202'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4350''),''us'',''AMERICA'',''700'',''Sidney.Capshaw@DUNLIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.90745, 43.037389,NULL),NULL,NULL));'||chr(10)||
'IN';

s:=s||'SERT INTO oehr_customers VALUES '||chr(10)||
'    (158,''Frederico'',''Lyon'',oehr_cust_address_typ'||chr(10)||
'    (''1400 Bellinger St Fl 4'',''54703'',''Eau Claire'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 745 123 4367''),''us'',''AMERICA'',''700'',''Frederico.Lyon@FLICKER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-91.51112, 44.813529,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (159,''Eddie';

s:=s||''',''Boyer'',oehr_cust_address_typ'||chr(10)||
'    (''411 E Wisconsin Ave # 2550'',''53202'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4369''),''us'',''AMERICA'',''700'',''Eddie.Boyer@GALLINULE.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.90645, 43.038621,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (160,''Eddie'',''Stern'',oehr_cust_address_typ'||chr(10)||
'    (''808 3Rd St';

s:=s||' # 100'',''54403'',''Wausau'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 715 123 4372''),''us'',''AMERICA'',''700'',''Eddie.Stern@GODWIT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-89.62748, 44.963124,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (161,''Ernest'',''Weaver'',oehr_cust_address_typ'||chr(10)||
'    (''300 Crooks St'',''54301'',''Green Bay'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+';

s:=s||'1 414 123 4373''),''us'',''AMERICA'',''900'',''Ernest.Weaver@GROSBEAK.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-88.01714, 44.510237,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (162,''Ernest'',''George'',oehr_cust_address_typ'||chr(10)||
'    (''122 E Dayton St'',''53703'',''Madison'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 608 123 4374''),''us'',''AMERICA'',''900'',''Ernest.George@LAPWIN';

s:=s||'G.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-89.38472, 43.077067,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (163,''Ernest'',''Chandar'',oehr_cust_address_typ'||chr(10)||
'    (''633 S Hawley Rd'',''53214'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4376''),''us'',''AMERICA'',''900'',''Ernest.Chandar@LIMPKIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSY';

s:=s||'S.SDO_POINT_TYPE'||chr(10)||
'    (-87.98592, 43.025362,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (164,''Charlotte'',''Kazan'',oehr_cust_address_typ'||chr(10)||
'    (''2122 Campbell Rd'',''54601'',''La Crosse'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 608 123 4378''),''us'',''AMERICA'',''1200'',''Charlotte.Kazan@MERGANSER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-91.22433, 43.815379,NULL),N';

s:=s||'ULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (165,''Charlotte'',''Fonda'',oehr_cust_address_typ'||chr(10)||
'    (''3324 N Oakland Ave'',''53211'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4381''),''us'',''AMERICA'',''1200'',''Charlotte.Fonda@MOORHEN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.88781, 43.078038,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'   ';

s:=s||' (166,''Dheeraj'',''Alexander'',oehr_cust_address_typ'||chr(10)||
'    (''666 22Nd Ave Ne'',''55418'',''Minneapolis'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 612 123 4397''),''us'',''AMERICA'',''1200'',''Dheeraj.Alexander@NUTHATCH.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.25421, 45.009864,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (167,''Gerard'',''Hershey'',oehr_cust_address_typ';

s:=s||''||chr(10)||
'    (''1501 Lowry Ave N'',''55411'',''Minneapolis'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 612 123 4399''),''us'',''AMERICA'',''1200'',''Gerard.Hershey@PARULA.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.29798, 45.01319,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (168,''Hema'',''Voight'',oehr_cust_address_typ'||chr(10)||
'    (''113 N 1St St'',''55401'',''Minneapolis'',''MN'',''US''),oe';

s:=s||'hr_phone_list_typ'||chr(10)||
'    (''+1 612 123 4408''),''us'',''AMERICA'',''1200'',''Hema.Voight@PHALAROPE.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.26806, 44.984747,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (169,''Dheeraj'',''Davis'',oehr_cust_address_typ'||chr(10)||
'    (''4200 Yosemite Ave S'',''55416'',''Minneapolis'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 612 123 4417''),''us'',''AME';

s:=s||'RICA'',''1200'',''Dheeraj.Davis@PIPIT.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.35285, 44.924115,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (170,''Harry Dean'',''Fonda'',oehr_cust_address_typ'||chr(10)||
'    (''2800 Chicago Ave # 100'',''55407'',''Minneapolis'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 612 123 4419''),''us'',''AMERICA'',''1200'',''HarryDean.Fonda@PLOVER.COM'','||chr(10)||
'   ';

s:=s||' 149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.26233, 44.951875,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (171,''Hema'',''Powell'',oehr_cust_address_typ'||chr(10)||
'    (''200 1St St Sw'',''55905'',''Rochester'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 507 123 4421''),''us'',''AMERICA'',''1200'',''Hema.Powell@SANDERLING.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYP';

s:=s||'E'||chr(10)||
'    (-92.46698, 44.021392,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (172,''Harry Mean'',''Peckinpah'',oehr_cust_address_typ'||chr(10)||
'    (''314 W Superior St # 1015'',''55802'',''Duluth'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 218 123 4429''),''us'',''AMERICA'',''1200'',''HarryMean.Peckinpah@VERDIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (0, NULL,NULL),NULL,NULL));'||chr(10)||
'INSER';

s:=s||'T INTO oehr_customers VALUES '||chr(10)||
'    (173,''Kathleen'',''Walken'',oehr_cust_address_typ'||chr(10)||
'    (''1409 Willow St # 600'',''55403'',''Minneapolis'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 612 123 4434''),''us'',''AMERICA'',''1200'',''Kathleen.Walken@VIREO.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.28193, 44.968631,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (174,''Blake'',''';

s:=s||'Seignier'',oehr_cust_address_typ'||chr(10)||
'    (''2720 Brewerton Rd'',''13211'',''Syracuse'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 315 123 4442''),''us'',''AMERICA'',''1200'',''Blake.Seignier@GALLINULE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.14607, 43.106533,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (175,''Claude'',''Powell'',oehr_cust_address_typ'||chr(10)||
'    (''2134 W Genesee ';

s:=s||'St'',''13219'',''Syracuse'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 315 123 4447''),''us'',''AMERICA'',''1200'',''Claude.Powell@GODWIT.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.19845, 43.047707,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (176,''Faye'',''Glenn'',oehr_cust_address_typ'||chr(10)||
'    (''1522 Main St'',''14305'',''Niagara Falls'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (';

s:=s||'''+1 716 123 4457''),''us'',''AMERICA'',''1200'',''Faye.Glenn@GREBE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-79.05241, 43.102789,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (177,''Gerhard'',''Seignier'',oehr_cust_address_typ'||chr(10)||
'    (''49 N Pine Ave'',''12203'',''Albany'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4459''),''us'',''AMERICA'',''1200'',''Gerhard.Seignier@JACAN';

s:=s||'A.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.7927, 42.668507,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (178,''Grace'',''Belushi'',oehr_cust_address_typ'||chr(10)||
'    (''726 Union St'',''12534'',''Hudson'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4464''),''us'',''AMERICA'',''1200'','||chr(10)||
'    ''Grace.Belushi@KILLDEER.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS';

s:=s||'.SDO_POINT_TYPE'||chr(10)||
'    (-73.784949, 42.246766,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (179,''Harry dean'',''Forrest'',oehr_cust_address_typ'||chr(10)||
'    (''137 Lark St'',''12210'',''Albany'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4474''),''us'',''AMERICA'',''1200'','||chr(10)||
'    ''Harrydean.Forrest@KISKADEE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.76188, 42.658418,NULL),';

s:=s||'NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (180,''Harry dean'',''Cage'',oehr_cust_address_typ'||chr(10)||
'    (''33 Fulton St'',''12601'',''Poughkeepsie'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 914 123 4494''),''us'',''AMERICA'',''1200'','||chr(10)||
'    ''Harrydean.Cage@LAPWING.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.928561, 41.723468,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'';

s:=s||'    (181,''Lauren'',''Hershey'',oehr_cust_address_typ'||chr(10)||
'    (''2360 Maxon Rd'',''12308'',''Schenectady'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4496''),''us'',''AMERICA'',''1200'','||chr(10)||
'    ''Lauren.Hershey@LIMPKIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.91984, 42.833987,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (182,''Lauren'',''Dench'',oehr_cust_address_typ'||chr(10)||
'  ';

s:=s||'  (''85 High St'',''14203'',''Buffalo'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 716 123 4575''),''us'',''AMERICA'',''1200'','||chr(10)||
'    ''Lauren.Dench@LONGSPUR.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.86586, 42.900169,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (183,''Lauren'',''Altman'',oehr_cust_address_typ'||chr(10)||
'    (''1 Palisade Ave Fl 2'',''10701'',''Yonkers'',''NY'',''US''),oehr_';

s:=s||'phone_list_typ'||chr(10)||
'    (''+1 914 123 4578''),''us'',''AMERICA'',''1200'',''Lauren.Altman@MERGANSER.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.89811, 40.933646,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (184,''Mary Beth'',''Roberts'',oehr_cust_address_typ'||chr(10)||
'    (''500 S Salina St # 500'',''13202'',''Syracuse'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 315 123 4597''),''us'',''A';

s:=s||'MERICA'',''1200'',''MaryBeth.Roberts@NUTHATCH.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.15252, 43.044258,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (185,''Matthew'',''Wright'',oehr_cust_address_typ'||chr(10)||
'    (''33 Pine St'',''14094'',''Lockport'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 716 123 4599''),''us'',''AMERICA'',''1200'',''Matthew.Wright@OVENBIRD.COM'','||chr(10)||
'    NULL,MD';

s:=s||'SYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.69231, 43.169422,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (186,''Meena'',''Alexander'',oehr_cust_address_typ'||chr(10)||
'    (''Po Box 2152'',''14240'',''Buffalo'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 716 123 4605''),''us'',''AMERICA'',''1200'',''Meena.Alexander@PARULA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (';

s:=s||'-78.82672, 42.884822,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (187,''Grace'',''Dvrrie'',oehr_cust_address_typ'||chr(10)||
'    (''2979 Hamburg St'',''12303'',''Schenectady'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4617''),''us'',''AMERICA'',''1200'',''Grace.Dvrrie@PHOEBE.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.93703, 42.76779,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_c';

s:=s||'ustomers VALUES '||chr(10)||
'    (188,''Charlotte'',''Buckley'',oehr_cust_address_typ'||chr(10)||
'    (''1790 Grand Blvd'',''12309'',''Schenectady'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4618''),''us'',''AMERICA'',''1200'',''Charlotte.Buckley@PINTAIL.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.90567, 42.814971,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (189,''Gena'',''Harris'',oehr';

s:=s||'_cust_address_typ'||chr(10)||
'    (''7 Ingelside Ln'',''10605'',''White Plains'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 914 123 4619''),''us'',''AMERICA'',''1200'',''Gena.Harris@PIPIT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.7369, 40.999002,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (190,''Gena'',''Curtis'',oehr_cust_address_typ'||chr(10)||
'    (''18 Glenridge Rd'',''12302'',''Schenectady''';

s:=s||',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4624''),''us'',''AMERICA'',''1200'',''Gena.Curtis@PLOVER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.92997, 42.868566,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (191,''Maureen'',''Sanders'',oehr_cust_address_typ'||chr(10)||
'    (''6432 Rising Sun Ave'',''19111'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 46';

s:=s||'44''),''us'',''AMERICA'',''1200'',''Maureen.Sanders@PUFFIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.095, 40.050359,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (192,''Sean'',''Stockwell'',oehr_cust_address_typ'||chr(10)||
'    (''Rr 10'',''19606'',''Reading'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 610 123 4657''),''us'',''AMERICA'',''1200'',''Sean.Stockwell@PYRRHULOXIA.COM'','||chr(10)||
'    149,';

s:=s||'MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.85273, 40.333337,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (193,''Harry dean'',''Kinski'',oehr_cust_address_typ'||chr(10)||
'    (''2455 Rose Garden Rd'',''15220'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4662''),''us'',''AMERICA'',''1200'',''Harrydean.Kinski@REDPOLL.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO';

s:=s||'_POINT_TYPE'||chr(10)||
'    (-80.045732, 40.407729,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (194,''Kathleen'',''Garcia'',oehr_cust_address_typ'||chr(10)||
'    (''1812 Timberline Rd'',''16601'',''Altoona'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 814 123 4663''),''us'',''AMERICA'',''1200'',''Kathleen.Garcia@REDSTART.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.44857, 40.487139,NULL),NULL,N';

s:=s||'ULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (195,''Sean'',''Olin'',oehr_cust_address_typ'||chr(10)||
'    (''141 Schiller St'',''19601'',''Reading'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 610 123 4664''),''us'',''AMERICA'',''1200'',''Sean.Olin@SCAUP.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.93642, 40.342217,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (196,''Gerard'',''Dench'',o';

s:=s||'ehr_cust_address_typ'||chr(10)||
'    (''1126 Pawlings Rd'',''19403'',''Norristown'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 610 123 4667''),''us'',''AMERICA'',''1200'',''Gerard.Dench@SCOTER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.432962, 40.126981,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (197,''Gerard'',''Altman'',oehr_cust_address_typ'||chr(10)||
'    (''55 Church Hill Rd'',''19606'',''R';

s:=s||'eading'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 610 123 4669''),''us'',''AMERICA'',''1200'',''Gerard.Altman@SHRIKE.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.85054, 40.359876,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (198,''Maureen'',''de Funes'',oehr_cust_address_typ'||chr(10)||
'    (''354 N Prince St'',''17603'',''Lancaster'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 123';

s:=s||' 4674''),''us'',''AMERICA'',''1200'',''Maureen.deFunes@SISKIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.30895, 40.043037,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (199,''Clint'',''Chapman'',oehr_cust_address_typ'||chr(10)||
'    (''115 Chestnut St'',''19106'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4676''),''us'',''AMERICA'',''1400'',''Clint.Chapman@SNIPE.CO';

s:=s||'M'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.14343, 39.94801,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (200,''Clint'',''Gielgud'',oehr_cust_address_typ'||chr(10)||
'    (''2899 Grand Ave'',''15225'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4681''),''us'',''AMERICA'',''1400'',''Clint.Gielgud@STILT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_PO';

s:=s||'INT_TYPE'||chr(10)||
'    (-80.117174, 40.508616,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (201,''Eric'',''Prashant'',oehr_cust_address_typ'||chr(10)||
'    (''Po Box 39'',''15701'',''Indiana'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4684''),''us'',''AMERICA'',''1400'',''Eric.Prashant@TATTLER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-79.151699, 40.620971,NULL),NULL,NULL));'||chr(10)||
'INSERT IN';

s:=s||'TO oehr_customers VALUES '||chr(10)||
'    (202,''Ingrid'',''Welles'',oehr_cust_address_typ'||chr(10)||
'    (''1604 Broadway Ave'',''15216'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4688''),''us'',''AMERICA'',''1400'',''Ingrid.Welles@TEAL.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-80.024861, 40.410256,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (203,''Ingrid'',''Rampling'',o';

s:=s||'ehr_cust_address_typ'||chr(10)||
'    (''4734 Liberty Ave'',''15224'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4691''),''us'',''AMERICA'',''1400'',''Ingrid.Rampling@WIGEON.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-79.94906, 40.461561,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (204,''Cliff'',''Puri'',oehr_cust_address_typ'||chr(10)||
'    (''21 Thornwood Rd'',''17112'',''Harr';

s:=s||'isburg'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 123 4692''),''us'',''AMERICA'',''1400'',''Cliff.Puri@CORMORANT.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.80393, 40.314701,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (205,''Emily'',''Pollack'',oehr_cust_address_typ'||chr(10)||
'    (''3725 W Lake Rd'',''16505'',''Erie'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 814 123 4696''),';

s:=s||'''us'',''AMERICA'',''1400'',''Emily.Pollack@DIPPER.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-80.16936, 42.097165,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (206,''Fritz'',''Hackman'',oehr_cust_address_typ'||chr(10)||
'    (''1808 4Th Ave'',''16602'',''Altoona'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 814 123 4697''),''us'',''AMERICA'',''1400'',''Fritz.Hackman@DUNLIN.COM'','||chr(10)||
'    145,MDSYS';

s:=s||'.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.399501, 40.505884,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (207,''Cybill'',''Laughton'',oehr_cust_address_typ'||chr(10)||
'    (''Station Sq'',''15219'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4700''),''us'',''AMERICA'',''1400'',''Cybill.Laughton@EIDER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-';

s:=s||'79.9818, 40.443237,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (208,''Cyndi'',''Griem'',oehr_cust_address_typ'||chr(10)||
'    (''4020 Garden Ave'',''16508'',''Erie'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 814 123 4706''),''us'',''AMERICA'',''1400'',''Cyndi.Griem@GALLINULE.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-80.11026, 42.083634,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers';

s:=s||' VALUES '||chr(10)||
'    (209,''Cyndi'',''Collins'',oehr_cust_address_typ'||chr(10)||
'    (''100 N Peach St'',''19139'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4708''),''us'',''AMERICA'',''1400'',''Cyndi.Collins@GODWIT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.22731, 39.961649,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (210,''Cybill'',''Clapton'',oehr_cust_address_t';

s:=s||'yp'||chr(10)||
'    (''835 Heister Ln'',''19605'',''Reading'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 610 123 4714''),''us'',''AMERICA'',''1400'',''Cybill.Clapton@GOLDENEYE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.92064, 40.364485,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (211,''Luchino'',''Jordan'',oehr_cust_address_typ'||chr(10)||
'    (''378 S Negley Ave'',''15232'',''Pittsburgh'',''PA'',''US';

s:=s||'''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4718''),''us'',''AMERICA'',''1500'',''Luchino.Jordan@GREBE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-79.93347, 40.459305,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (212,''Luchino'',''Falk'',oehr_cust_address_typ'||chr(10)||
'    (''5643 N 5Th St'',''19120'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4721''),''us'',''AMERI';

s:=s||'CA'',''1500'',''Luchino.Falk@OVENBIRD.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.13043, 40.036595,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (213,''Luchino'',''Bradford'',oehr_cust_address_typ'||chr(10)||
'    (''1401 W Warren Rd'',''16701'',''Bradford'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 814 123 4722''),''us'',''AMERICA'',''1500'',''Luchino.Bradford@PARULA.COM'','||chr(10)||
'    149,MDSY';

s:=s||'S.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.651424, 41.905571,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (214,''Robin'',''Danson'',oehr_cust_address_typ'||chr(10)||
'    (''815 Freeport Rd'',''15215'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4724''),''us'',''AMERICA'',''1500'',''Robin.Danson@PHAINOPEPLA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'';

s:=s||'    (-79.896621, 40.487805,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (215,''Orson'',''Perkins'',oehr_cust_address_typ'||chr(10)||
'    (''327 N Washington Ave # 300'',''18503'',''Scranton'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 123 4730''),''us'',''AMERICA'',''1900'',''Orson.Perkins@PINTAIL.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.662181, 41.409215,NULL),NULL,NULL));'||chr(10)||
'';

s:=s||'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (216,''Orson'',''Koirala'',oehr_cust_address_typ'||chr(10)||
'    (''810 Race St'',''19107'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4738''),''us'',''AMERICA'',''1900'',''Orson.Koirala@PIPIT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.15289, 39.95474,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (217,''Bryan'',''Huston'',';

s:=s||'oehr_cust_address_typ'||chr(10)||
'    (''4901 Locust Ln'',''17109'',''Harrisburg'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 123 4739''),''us'',''AMERICA'',''2300'',''Bryan.Huston@PYRRHULOXIA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.80639, 40.293213,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (218,''Bryan'',''Dvrrie'',oehr_cust_address_typ'||chr(10)||
'    (''3376 Perrysville Ave'',''1521';

s:=s||'4'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4740''),''us'',''AMERICA'',''2300'',''Bryan.Dvrrie@REDPOLL.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-80.014072, 40.481972,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (219,''Ajay'',''Sen'',oehr_cust_address_typ'||chr(10)||
'    (''220 Penn Ave # 300'',''18503'',''Scranton'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 ';

s:=s||'123 4741''),''us'',''AMERICA'',''2300'',''Ajay.Sen@TROGON.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.666231, 41.409595,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (220,''Carol'',''Jordan'',oehr_cust_address_typ'||chr(10)||
'    (''135 S 18Th St # 1'',''19103'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4743''),''us'',''AMERICA'',''2300'',''Carol.Jordan@TURNSTONE.C';

s:=s||'OM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.17787, 39.949455,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (221,''Carol'',''Bradford'',oehr_cust_address_typ'||chr(10)||
'    (''522 Swede St'',''19401'',''Norristown'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 610 123 4744''),''us'',''AMERICA'',''2300'',''Carol.Bradford@VERDIN.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SD';

s:=s||'O_POINT_TYPE'||chr(10)||
'    (-75.343572, 40.11615,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (222,''Cary'',''Stockwell'',oehr_cust_address_typ'||chr(10)||
'    (''7708 City Ave'',''19151'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4745''),''us'',''AMERICA'',''2300'',''Cary.Stockwell@VIREO.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.278794, 39.975525,NULL),NULL,NULL';

s:=s||'));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (223,''Cary'',''Olin'',oehr_cust_address_typ'||chr(10)||
'    (''1801 Lititz Pike'',''17601'',''Lancaster'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 123 4746''),''us'',''AMERICA'',''2300'',''Cary.Olin@WATERTHRUSH.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.30826, 40.07257,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (224,''Clara'',''Krig';

s:=s||'e'',oehr_cust_address_typ'||chr(10)||
'    (''101 E Olney Ave'',''19120'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4748''),''us'',''AMERICA'',''2300'',''Clara.Krige@WHIMBREL.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.12021, 40.034937,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (225,''Clara'',''Ganesan'',oehr_cust_address_typ'||chr(10)||
'    (''612 Jefferson Ave'',''185';

s:=s||'10'',''Scranton'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 123 4752''),''us'',''AMERICA'',''2300'',''Clara.Ganesan@WIGEON.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.655941, 41.411024,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (226,''Ajay'',''Andrews'',oehr_cust_address_typ'||chr(10)||
'    (''223 4Th Ave # 1100'',''15222'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1';

s:=s||' 412 123 4763''),''us'',''AMERICA'',''2300'',''Ajay.Andrews@YELLOWTHROAT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-80.0027, 40.439706,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (227,''Kathy'',''Prashant'',oehr_cust_address_typ'||chr(10)||
'    (''36 W 34Th St'',''16508'',''Erie'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 814 123 4766''),''us'',''AMERICA'',''2400'',''Kathy.Prashant@ANI.COM';

wwv_flow_api.append_to_install_script(
  p_id => 313868220824618302 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||''','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-80.07008, 42.105437,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (228,''Graham'',''Neeson'',oehr_cust_address_typ'||chr(10)||
'    (''1007 Mount Royal Blvd'',''15223'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4767''),''us'',''AMERICA'',''2400'',''Graham.Neeson@AUKLET.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSY';

s:=s||'S.SDO_POINT_TYPE'||chr(10)||
'    (-79.959364, 40.516644,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (229,''Ian'',''Chapman'',oehr_cust_address_typ'||chr(10)||
'    (''601 Market St'',''19106'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4768''),''us'',''AMERICA'',''2400'',''Ian.Chapman@AVOCET.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.15065, 39.950394,NULL),NULL,NULL))';

s:=s||';'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (230,''Danny'',''Wright'',oehr_cust_address_typ'||chr(10)||
'    (''5565 Baynton St'',''19144'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4771''),''us'',''AMERICA'',''2400'',''Danny.Wright@BITTERN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.16979, 40.036941,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (231,''Danny'',''R';

s:=s||'ourke'',oehr_cust_address_typ'||chr(10)||
'    (''5640 Fishers Ln'',''20852'',''Rockville'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 301 123 4794''),''us'',''AMERICA'',''2400'',''Danny.Rourke@BRANT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-77.115297, 39.062872,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (232,''Donald'',''Hunter'',oehr_cust_address_typ'||chr(10)||
'    (''5122 Sinclair Ln'',''21206';

s:=s||''',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4795''),''us'',''AMERICA'',''2400'',''Donald.Hunter@CHACHALACA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.545732, 39.322775,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (233,''Graham'',''Spielberg'',oehr_cust_address_typ'||chr(10)||
'    (''680 Bel Air Rd'',''21014'',''Bel Air'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1';

s:=s||' 410 123 4800''),''us'',''AMERICA'',''2400'',''Graham.Spielberg@CHUKAR.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.357073, 39.523878,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (234,''Dan'',''Roberts'',oehr_cust_address_typ'||chr(10)||
'    (''4301 Ashland Ave'',''21205'',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4805''),''us'',''AMERICA'',''2400'',''Dan.Roberts@NUTH';

s:=s||'ATCH.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.561682, 39.301622,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (235,''Edward'',''Oates'',oehr_cust_address_typ'||chr(10)||
'    (''8004 Stansbury Rd'',''21222'',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 012 4715'', ''+1 410 083 4715''),''us'',''AMERICA'',''2400'',''Edward.Oates@OVENBIRD.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMET';

s:=s||'RY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.500344, 39.25618,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (236,''Edward'',''Julius'',oehr_cust_address_typ'||chr(10)||
'    (''10209 Yearling Dr'',''20850'',''Rockville'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 301 123 4809''),''us'',''AMERICA'',''2400'',''Edward.Julius@PARULA.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-77.21204';

s:=s||'7, 39.098763,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (237,''Farrah'',''Quinlan'',oehr_cust_address_typ'||chr(10)||
'    (''3000 Greenmount Ave'',''21218'',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4812''),''us'',''AMERICA'',''2400'',''Farrah.Quinlan@PHAINOPEPLA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.609501, 39.324878,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oe';

s:=s||'hr_customers VALUES '||chr(10)||
'    (238,''Farrah'',''Lange'',oehr_cust_address_typ'||chr(10)||
'    (''200 E Fort Ave'',''21230'',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4813''),''us'',''AMERICA'',''2400'',''Farrah.Lange@PHALAROPE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.610142, 39.272749,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (239,''Hal'',''Stockwell'',oehr_cust';

s:=s||'_address_typ'||chr(10)||
'    (''1262 Vocke Rd'',''21502'',''Cumberland'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 301 123 4814''),''us'',''AMERICA'',''2400'',''Hal.Stockwell@PHOEBE.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (0, NULL,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (240,''Malcolm'',''Kanth'',oehr_cust_address_typ'||chr(10)||
'    (''3314 Eastern Ave'',''21224'',''Baltimore'',''MD'',''US''),oeh';

s:=s||'r_phone_list_typ'||chr(10)||
'    (''+1 410 123 4816''),''us'',''AMERICA'',''2400'',''Malcolm.Kanth@PIPIT.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.570102, 39.28652,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (241,''Malcolm'',''Broderick'',oehr_cust_address_typ'||chr(10)||
'    (''12817 Coastal Hwy'',''21842'',''Ocean City'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4817''),''us'',''AMERI';

s:=s||'CA'',''2400'',''Malcolm.Broderick@PLOVER.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.056879, 38.422394,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (242,''Mary'',''Lemmon'',oehr_cust_address_typ'||chr(10)||
'    (''11200 Scaggsville Rd'',''20723'',''Laurel'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 301 123 4818''),''us'',''AMERICA'',''2400'',''Mary.Lemmon@PUFFIN.COM'','||chr(10)||
'    145,MDSYS.SD';

s:=s||'O_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.904846, 39.138404,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (243,''Mary'',''Collins'',oehr_cust_address_typ'||chr(10)||
'    (''9435 Washington Blvd N # M'',''20723'',''Laurel'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 301 123 4819''),''us'',''AMERICA'',''2400'',''Mary.Collins@PYRRHULOXIA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TY';

s:=s||'PE'||chr(10)||
'    (-76.830336, 39.117905,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (244,''Matt'',''Gueney'',oehr_cust_address_typ'||chr(10)||
'    (''2300 Harford Rd'',''21218'',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4822''),''us'',''AMERICA'',''2400'',''Matt.Gueney@REDPOLL.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.5969, 39.315728,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO o';

s:=s||'ehr_customers VALUES '||chr(10)||
'    (245,''Max'',''von Sydow'',oehr_cust_address_typ'||chr(10)||
'    (''2 2Nd St # A'',''21842'',''Ocean City'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4840''),''us'',''AMERICA'',''2400'',''Max.vonSydow@REDSTART.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.084509, 38.333211,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (246,''Max'',''Schell'',oehr_cust_ad';

s:=s||'dress_typ'||chr(10)||
'    (''6917 W Oklahoma Ave'',''53219'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4363''),''us'',''AMERICA'',''2400'',''Max.Schell@SANDERLING.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.99935, 42.988358,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (247,''Cynda'',''Whitcraft'',oehr_cust_address_typ'||chr(10)||
'    (''206 S Broadway # 707'',''55904'',''Roc';

s:=s||'hester'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 507 123 4387''),''us'',''AMERICA'',''2400'',''Cynda.Whitcraft@SANDPIPER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-92.46291, 44.021356,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (248,''Donald'',''Minnelli'',oehr_cust_address_typ'||chr(10)||
'    (''160 Glenwood Ave'',''55405'',''Minneapolis'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 ';

s:=s||'612 123 4436''),''us'',''AMERICA'',''2400'',''Donald.Minnelli@SCAUP.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.28336, 44.979113,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (249,''Hannah'',''Broderick'',oehr_cust_address_typ'||chr(10)||
'    (''6915 Grand Ave'',''46323'',''Hammond'',''IN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 219 123 4145''),''us'',''AMERICA'',''2400'',''Hannah.Broderick@SH';

s:=s||'RIKE.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.44218, 41.587639,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (250,''Dan'',''Williams'',oehr_cust_address_typ'||chr(10)||
'    (''2215 Oak Industrial Dr Ne'',''49505'',''Grand Rapids'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 616 123 4190''),''us'',''AMERICA'',''2400'',''Dan.Williams@SISKIN.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001';

s:=s||', 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.61161, 42.975227,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (251,''Raul'',''Wilder'',oehr_cust_address_typ'||chr(10)||
'    (''65 Cadillac Sq # 2701'',''48226'',''Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4241''),''us'',''AMERICA'',''2500'',''Raul.Wilder@STILT.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.045345, 42.331799,NU';

s:=s||'LL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (252,''Shah Rukh'',''Field'',oehr_cust_address_typ'||chr(10)||
'    (''3435 Tuscany Dr Se'',''49546'',''Grand Rapids'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 616 123 4259''),''us'',''AMERICA'',''2500'',''ShahRukh.Field@WHIMBREL.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.49774, 42.900677,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VA';

s:=s||'LUES '||chr(10)||
'    (253,''Sally'',''Bogart'',oehr_cust_address_typ'||chr(10)||
'    (''215 4Th Ave Se'',''52401'',''Cedar Rapids'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 319 123 4269''),''us'',''AMERICA'',''2500'',''Sally.Bogart@WILLET.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-91.66561, 41.976278,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (254,''Bruce'',''Bates'',oehr_cust_address_typ'||chr(10)||
'    ';

s:=s||'(''1751 Madison Ave'',''51503'',''Council Bluffs'',''IA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 712 123 4284''),''us'',''AMERICA'',''3500'',''Bruce.Bates@COWBIRD.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-95.82708, 41.244721,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (255,''Brooke'',''Shepherd'',oehr_cust_address_typ'||chr(10)||
'    (''810 1St Ave'',''51501'',''Council Bluffs'',''IA'',''US'')';

s:=s||',oehr_phone_list_typ'||chr(10)||
'    (''+1 712 123 4289''),''us'',''AMERICA'',''3500'',''Brooke.Shepherd@KILLDEER.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-95.85574, 41.260392,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (256,''Ben'',''de Niro'',oehr_cust_address_typ'||chr(10)||
'    (''500 W Oklahoma Ave'',''53207'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4312''),''us'',''A';

s:=s||'MERICA'',''3500'',''Ben.deNiro@KINGLET.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.91708, 42.987664,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (257,''Emmet'',''Walken'',oehr_cust_address_typ'||chr(10)||
'    (''4811 S 76Th St # 205'',''53220'',''Milwaukee'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4364''),''us'',''AMERICA'',''3600'',''Emmet.Walken@LIMPKIN.COM'','||chr(10)||
'    145,MDSYS';

s:=s||'.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-88.008361, 42.957388,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (258,''Ellen'',''Palin'',oehr_cust_address_typ'||chr(10)||
'    (''310 Broadway St'',''56308'',''Alexandria'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 320 123 4385''),''us'',''AMERICA'',''3600'',''Ellen.Palin@LONGSPUR.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-';

s:=s||'95.377469, 45.890088,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (259,''Denholm'',''von Sydow'',oehr_cust_address_typ'||chr(10)||
'    (''1721 E Lake St'',''55407'',''Minneapolis'',''MN'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 612 123 4407''),''us'',''AMERICA'',''3600'',''Denholm.vonSydow@MERGANSER.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-93.24927, 44.94833,NULL),NULL,NULL));'||chr(10)||
'INSERT I';

s:=s||'NTO oehr_customers VALUES '||chr(10)||
'    (260,''Ellen'',''Khan'',oehr_cust_address_typ'||chr(10)||
'    (''255 Great Arrow Ave'',''14207'',''Buffalo'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 716 123 4456''),''us'',''AMERICA'',''3600'',''Ellen.Khan@VERDIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.8782, 42.939107,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (261,''Emmet'',''Garcia'',oehr_cust_';

s:=s||'address_typ'||chr(10)||
'    (''800 Carter St'',''14621'',''Rochester'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 716 123 4582''),''us'',''AMERICA'',''3600'',''Emmet.Garcia@VIREO.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-77.59255, 43.19264,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (262,''Fred'',''Reynolds'',oehr_cust_address_typ'||chr(10)||
'    (''6640 Campbell Blvd'',''14094'',''Lockport'',''NY'',''';

s:=s||'US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 716 123 4627''),''us'',''AMERICA'',''3600'',''Fred.Reynolds@WATERTHRUSH.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.77288, 43.103915,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (263,''Fred'',''Lithgow'',oehr_cust_address_typ'||chr(10)||
'    (''802 North Ave'',''15209'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4677''),''us'',''';

s:=s||'AMERICA'',''3600'',''Fred.Lithgow@WHIMBREL.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-79.973484, 40.488173,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (264,''George'',''Adjani'',oehr_cust_address_typ'||chr(10)||
'    (''1136 Arch St'',''19107'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4702''),''us'',''AMERICA'',''3600'',''George.Adjani@WILLET.COM'','||chr(10)||
'    149,MDS';

s:=s||'YS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.15858, 39.953503,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (265,''Irene'',''Laughton'',oehr_cust_address_typ'||chr(10)||
'    (''6Th And Master St'',''19122'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4749''),''us'',''AMERICA'',''3600'',''Irene.Laughton@ANHINGA.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_T';

s:=s||'YPE'||chr(10)||
'    (-75.146, 39.972648,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (266,''Prem'',''Cardinale'',oehr_cust_address_typ'||chr(10)||
'    (''Rt 6 E'',''16365'',''Warren'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 814 123 4755''),''us'',''AMERICA'',''3700'',''Prem.Cardinale@BITTERN.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-79.093419, 41.836445,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_cu';

s:=s||'stomers VALUES '||chr(10)||
'    (267,''Prem'',''Walken'',oehr_cust_address_typ'||chr(10)||
'    (''1924 Bedford St'',''21502'',''Cumberland'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 301 123 4831''),''us'',''AMERICA'',''3700'',''Prem.Walken@BRANT.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.74141, 39.67579,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (268,''Kyle'',''Schneider'',oehr_cust_address_t';

s:=s||'yp'||chr(10)||
'    (''2674 Collingwood St'',''48206'',''Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4167''),''us'',''AMERICA'',''3700'',''Kyle.Schneider@DUNLIN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.114655, 42.379998,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (269,''Kyle'',''Martin'',oehr_cust_address_typ'||chr(10)||
'    (''2713 N Bendix Dr'',''46628'',''South Bend'',''IN'',''US';

s:=s||'''),oehr_phone_list_typ'||chr(10)||
'    (''+1 219 123 4116''),''us'',''AMERICA'',''3700'',''Kyle.Martin@EIDER.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-86.29384, 41.713988,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (270,''Meg'',''Derek'',oehr_cust_address_typ'||chr(10)||
'    (''23985 Bedford Rd N'',''49017'',''Battle Creek'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 616 123 4166''),''us'',''AMERIC';

s:=s||'A'',''3700'',''Meg.Derek@FLICKER.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-85.23775, 42.419583,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (271,''Shelley'',''Peckinpah'',oehr_cust_address_typ'||chr(10)||
'    (''752 W Huron St'',''48341'',''Pontiac'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 810 123 4212''),''us'',''AMERICA'',''3700'',''Shelley.Peckinpah@GODWIT.COM'','||chr(10)||
'    149,MDSYS.SDO';

s:=s||'_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-83.319991, 42.635196,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (272,''Prem'',''Garcia'',oehr_cust_address_typ'||chr(10)||
'    (''660 Woodward Ave # 2290'',''48226'',''Detroit'',''MI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 313 123 4240''),''us'',''AMERICA'',''3700'',''Prem.Garcia@JACANA.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-8';

s:=s||'3.045995, 42.330983,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (273,''Bo'',''Hitchcock'',oehr_cust_address_typ'||chr(10)||
'    (''1330 N Memorial Dr'',''53404'',''Racine'',''WI'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 414 123 4340''),''us'',''AMERICA'',''5000'',''Bo.Hitchcock@ANHINGA.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-87.8003, 42.737121,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_cus';

s:=s||'tomers VALUES '||chr(10)||
'    (274,''Bob'',''McCarthy'',oehr_cust_address_typ'||chr(10)||
'    (''701 Seneca St'',''14210'',''Buffalo'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 716 123 4485''),''us'',''AMERICA'',''5000'',''Bob.McCarthy@ANI.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-78.85093, 42.876154,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (275,''Dom'',''McQueen'',oehr_cust_address_typ'||chr(10)||
'    ';

s:=s||'(''8 Automation Ln'',''12205'',''Albany'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 518 123 4532''),''us'',''AMERICA'',''5000'',''Dom.McQueen@AUKLET.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.81064, 42.719449,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (276,''Dom'',''Hoskins'',oehr_cust_address_typ'||chr(10)||
'    (''811 N Brandywine Ave'',''12308'',''Schenectady'',''NY'',''US''),oehr_pho';

s:=s||'ne_list_typ'||chr(10)||
'    (''+1 518 123 4562''),''us'',''AMERICA'',''5000'',''Dom.Hoskins@AVOCET.COM'','||chr(10)||
'    145,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-73.91715, 42.806965,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (277,''Don'',''Siegel'',oehr_cust_address_typ'||chr(10)||
'    (''2904 S Salina St'',''13205'',''Syracuse'',''NY'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 315 123 4585''),''us'',''AMERICA'',''5000'',''Don.';

s:=s||'Siegel@BITTERN.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.14293, 43.01943,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (278,''Gvtz'',''Bradford'',oehr_cust_address_typ'||chr(10)||
'    (''3025 Sussex Ave'',''15226'',''Pittsburgh'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 412 123 4659''),''us'',''AMERICA'',''5000'',''Gvtz.Bradford@BULBUL.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001';

s:=s||', 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-80.016204, 40.384079,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (279,''Holly'',''Kurosawa'',oehr_cust_address_typ'||chr(10)||
'    (''932 High St'',''17603'',''Lancaster'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 717 123 4679''),''us'',''AMERICA'',''5000'',''Holly.Kurosawa@CARACARA.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.31964, 40.028889,N';

s:=s||'ULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (280,''Rob'',''MacLaine'',oehr_cust_address_typ'||chr(10)||
'    (''5344 Haverford Ave'',''19139'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4709''),''us'',''AMERICA'',''5000'',''Rob.MacLaine@COOT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (0, NULL,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (281,''Don'',''';

s:=s||'Barkin'',oehr_cust_address_typ'||chr(10)||
'    (''6959 Tulip St'',''19135'',''Philadelphia'',''PA'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 215 123 4751''),''us'',''AMERICA'',''5000'',''Don.Barkin@CORMORANT.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-75.04023, 40.024509,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (282,''Kurt'',''Danson'',oehr_cust_address_typ'||chr(10)||
'    (''511 S Central Ave # A'',';

s:=s||'''21202'',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 123 4807''),''us'',''AMERICA'',''5000'',''Kurt.Danson@COWBIRD.COM'','||chr(10)||
'    149,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.59934, 39.28475,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (283,''Kurt'',''Heard'',oehr_cust_address_typ'||chr(10)||
'    (''400 E Joppa Rd'',''21286'',''Baltimore'',''MD'',''US''),oehr_phone_list_typ'||chr(10)||
'    (''+1 410 ';

s:=s||'123 4829''),''us'',''AMERICA'',''5000'',''Kurt.Heard@CURLEW.COM'','||chr(10)||
'    NULL,MDSYS.SDO_GEOMETRY'||chr(10)||
'    (2001, 8307, MDSYS.SDO_POINT_TYPE'||chr(10)||
'    (-76.595984, 39.401932,NULL),NULL,NULL));'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (308,''Glenda'',''Dunaway'',oehr_cust_address_typ'||chr(10)||
'    (''1795 Wu Meng'',''21191'',''Muang Chonburi'','''',''CN''),oehr_phone_list_typ'||chr(10)||
'    (''+86 811 012 4093''),''zhs'',''CHINA'',''1200'',''Glenda.Dunaway@DOWITCHER';

s:=s||'.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (309,''Glenda'',''Bates'',oehr_cust_address_typ'||chr(10)||
'    (''1796 Tsing Tao'',''11111'',''Muang Nonthaburi'','''',''CN''),oehr_phone_list_typ'||chr(10)||
'    (''+86 123 012 4095''),''zhs'',''CHINA'',''1200'',''Glenda.Bates@DIPPER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (323,''Goetz'',''Falk'',oehr_cust_address_typ'||chr(10)||
'    (''1810 Tucker Crt'',''361181'',''Mumbai'','''',''IN''';

s:=s||'),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4123'', ''+91 80 083 4833''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Goetz.Falk@VEERY.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (326,''Hal'',''Olin'',oehr_cust_address_typ'||chr(10)||
'    (''Walpurgisstr 69'',''81243'',''Munich'','''',''DE''),oehr_phone_list_typ'||chr(10)||
'    (''+49 89 012 4129'', ''+49 89 083 4839''),''d'',''GERMANY'',''2400'','||chr(10)||
'    ''Hal.Olin@FLICKER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oe';

s:=s||'hr_customers VALUES '||chr(10)||
'    (327,''Hannah'',''Kanth'',oehr_cust_address_typ'||chr(10)||
'    (''Sendlinger Tor 4'',''81696'',''Munich'','''',''DE''),oehr_phone_list_typ'||chr(10)||
'    (''+49 90 012 4131'', ''+49 90 083 4131''),''d'',''GERMANY'',''2400'','||chr(10)||
'    ''Hannah.Kanth@GADWALL.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (328,''Hannah'',''Field'',oehr_cust_address_typ'||chr(10)||
'    (''Theresienstr 15'',''81999'',''Munich'','''',''DE''),oehr_phone_list_t';

s:=s||'yp'||chr(10)||
'    (''+49 91 012 4133'', ''+49 91 083 4133''),''d'',''GERMANY'',''2400'','||chr(10)||
'    ''Hannah.Field@GALLINULE.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (333,''Margret'',''Powell'',oehr_cust_address_typ'||chr(10)||
'    (''Via Frenzy 6903'',''361196'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4543''),''i'',''ITALY'',''1200'','||chr(10)||
'    ''Margret.Powell@ANI.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (3';

s:=s||'34,''Harry Mean'',''Taylor'',oehr_cust_address_typ'||chr(10)||
'    (''1822 Ironweed St'',''91261'',''Toronto'',''ONT'',''CA''),oehr_phone_list_typ'||chr(10)||
'    (''+1 416 012 4147''),''us'',''AMERICA'',''1200'',''HarryMean.Taylor@REDPOLL.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (335,''Margrit'',''Garner'',oehr_cust_address_typ'||chr(10)||
'    (''Via Luminosa 162'',''361197'',''Firenze'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 55 012 4547''),''i'',''';

s:=s||'ITALY'',''500'',''Margrit.Garner@STILT.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (337,''Maria'',''Warden'',oehr_cust_address_typ'||chr(10)||
'    (''Via Notoriosa 1932 Rd'',''361198'',''Firenze'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 55 012 4551''),''i'',''ITALY'',''500'',''Maria.Warden@TANAGER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (339,''Marilou'',''Landis'',oehr_cust_address_typ'||chr(10)||
'    (''Via Noto';

s:=s||'riosa 1941'',''361199'',''Firenze'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 55 012 4555''),''i'',''ITALY'',''500'',''Marilou.Landis@TATTLER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (361,''Marilou'',''Chapman'',oehr_cust_address_typ'||chr(10)||
'    (''Via Notoriosa 1942'',''361200'',''Firenze'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 55 012 4559''),''i'',''ITALY'',''500'',''Marilou.Chapman@TEAL.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT I';

s:=s||'NTO oehr_customers VALUES '||chr(10)||
'    (363,''Kathy'',''Lambert'',oehr_cust_address_typ'||chr(10)||
'    (''Via Delle Grazie 11'',''361225'',''Tellaro'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4363''),''i'',''ITALY'',''2400'',''Kathy.Lambert@COOT.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (360,''Helmut'',''Capshaw'',oehr_cust_address_typ'||chr(10)||
'    (''1831 No Wong'',''111181'',''Peking'','''',''CN''),oehr_phone_list_typ'||chr(10)||
'    (''+86 10 ';

s:=s||'012 4165''),''zhs'',''CHINA'',''3600'',''Helmut.Capshaw@TROGON.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (341,''Keir'',''George'',oehr_cust_address_typ'||chr(10)||
'    (''Via Dolorosa 69'',''361229'',''Tellaro'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4365''),''i'',''ITALY'',''700'',''Keir.George@VIREO.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (342,''Marlon'',''Laughton'',oehr_cust_address_typ'||chr(10)||
'  ';

s:=s||'  (''Via Notoriosa 1943'',''361201'',''Firenze'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 55 012 4565''),''i'',''ITALY'',''2400'',''Marlon.Laughton@CORMORANT.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (343,''Keir'',''Chandar'',oehr_cust_address_typ'||chr(10)||
'    (''Via Luminosa 162'',''361231'',''Tellaro'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4367''),''i'',''ITALY'',''700'',''Keir.Chandar@WATERTHRUSH.COM'','||chr(10)||
'    149,';

s:=s||'NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (344,''Marlon'',''Godard'',oehr_cust_address_typ'||chr(10)||
'    (''2017 Convoy St'',''876508'',''Tokyo'','''',''JP''),oehr_phone_list_typ'||chr(10)||
'    (''+81 565 012 4567''),''ja'',''JAPAN'',''2400'',''Marlon.Godard@MOORHEN.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (345,''Keir'',''Weaver'',oehr_cust_address_typ'||chr(10)||
'    (''Via Di Firenze 231'',''361228'',''Tellaro'','''',''IT''),oehr_phone_list_';

s:=s||'typ'||chr(10)||
'    (''+39 10 012 4369''),''i'',''ITALY'',''700'',''Keir.Weaver@WHIMBREL.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (346,''Marlon'',''Clapton'',oehr_cust_address_typ'||chr(10)||
'    (''Via Notoriosa 1949'',''361202'',''Firenze'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 55 012 4569''),''i'',''ITALY'',''2400'',''Marlon.Clapton@COWBIRD.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (347,''Kelly'',''Quinlan'',o';

s:=s||'ehr_cust_address_typ'||chr(10)||
'    (''Via Frenzy 6903'',''361230'',''Tellaro'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4371'', ''+39 10 083 4371''),''i'',''ITALY'',''3600'','||chr(10)||
'    ''Kelly.Quinlan@PYRRHULOXIA.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (348,''Kelly'',''Lange'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Del Congresso 22'',''361219'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4373'', ''+';

s:=s||'39 49 083 4373''),''i'',''ITALY'',''3600'','||chr(10)||
'    ''Kelly.Lange@SANDPIPER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (349,''Ken'',''Glenn'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Quattre Stagioni 4'',''361220'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4375'', ''+39 49 083 4375''),''i'',''ITALY'',''3600'','||chr(10)||
'    ''Ken.Glenn@SAW-WHET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (';

s:=s||'350,''Ken'',''Chopra'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Cacchiatore 23'',''361218'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4377'', ''+39 49 083 4377''),''i'',''ITALY'',''3600'','||chr(10)||
'    ''Ken.Chopra@SCAUP.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (351,''Ken'',''Wenders'',oehr_cust_address_typ'||chr(10)||
'    (''Via Notoriosa 1932'',''361232'',''Tellaro'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 0';

s:=s||'12 4379'', ''+39 10 083 4379''),''i'',''ITALY'',''3600'','||chr(10)||
'    ''Ken.Wenders@REDPOLL.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (352,''Kenneth'',''Redford'',oehr_cust_address_typ'||chr(10)||
'    (''Via Notoriosa 1949'',''361236'',''Ventimiglia'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4381'', ''+39 10 083 4381''),''i'',''ITALY'',''3600'','||chr(10)||
'    ''Kenneth.Redford@REDSTART.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers ';

s:=s||'VALUES '||chr(10)||
'    (378,''Meg'',''Sen'',oehr_cust_address_typ'||chr(10)||
'    (''2033 Spartacus St'','''',''Samutprakarn'','''',''TH''),oehr_phone_list_typ'||chr(10)||
'    (''+66 76 012 4633'', ''+66 76 083 4633''),''th'',''THAILAND'',''3700'','||chr(10)||
'    ''Meg.Sen@COWBIRD.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (380,''Meryl'',''Holden'',oehr_cust_address_typ'||chr(10)||
'    (''2034 Sabrina Rd'',''361182'',''Samutprakarn'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91';

s:=s||' 80 012 4637'', ''+91 80 083 4637''),''hi'',''INDIA'',''3700'','||chr(10)||
'    ''Meryl.Holden@DIPPER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (447,''Richard'',''Coppola'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Svizzera'',''361211'',''Milano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 2 012 4771''),''i'',''ITALY'',''500'',''Richard.Coppola@SISKIN.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (448,''Richard'',''W';

s:=s||'inters'',oehr_cust_address_typ'||chr(10)||
'    (''Ruella Delle Spiriti'',''361212'',''Milano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 2 012 4773''),''i'',''ITALY'',''500'',''Richard.Winters@SNIPE.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (449,''Rick'',''Romero'',oehr_cust_address_typ'||chr(10)||
'    (''Via Del Disegno 194'',''361213'',''Milano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 2 012 4775''),''i'',''ITALY'',''1500'',''Rick.Romero';

s:=s||'@LONGSPUR.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (450,''Rick'',''Lyon'',oehr_cust_address_typ'||chr(10)||
'    (''Via Delle Capeletti 52'',''361214'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4777''),''i'',''ITALY'',''1500'',''Rick.Lyon@MERGANSER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (451,''Ridley'',''Hackman'',oehr_cust_address_typ'||chr(10)||
'    (''Via Delle Grazie 11'',''361215''';

s:=s||',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4779''),''i'',''ITALY'',''700'',''Ridley.Hackman@ANHINGA.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (452,''Ridley'',''Coyote'',oehr_cust_address_typ'||chr(10)||
'    (''Via Delli Capelli 2'',''361216'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4781''),''i'',''ITALY'',''700'',''Ridley.Coyote@ANI.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_cu';

s:=s||'stomers VALUES '||chr(10)||
'    (453,''Ridley'',''Young'',oehr_cust_address_typ'||chr(10)||
'    (''1592 Silverado St'',''361123'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4783''),''hi'',''INDIA'',''700'',''Ridley.Young@CHUKAR.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (454,''Rob'',''Russell'',oehr_cust_address_typ'||chr(10)||
'    (''1593 Silverado St'',''361112'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 ';

s:=s||'012 4785'', ''+91 80 083 4785''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Rob.Russell@VERDIN.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (458,''Robert'',''de Niro'',oehr_cust_address_typ'||chr(10)||
'    (''1597 Legend St'','''',''Mysore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4793''),''hi'',''INDIA'',''3700'','||chr(10)||
'    ''Robert.deNiro@DOWITCHER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (463,''Robin'',''Adj';

s:=s||'ani'',oehr_cust_address_typ'||chr(10)||
'    (''1602 Sholay St'','''',''Chennai'',''Tam'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4803''),''hi'',''INDIA'',''1500'',''Robin.Adjani@MOORHEN.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (466,''Rodolfo'',''Hershey'',oehr_cust_address_typ'||chr(10)||
'    (''1605 Bazigar Crt'','''',''Pune'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4809'', ''+91 80 083 4809''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''R';

s:=s||'odolfo.Hershey@VIREO.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (467,''Rodolfo'',''Dench'',oehr_cust_address_typ'||chr(10)||
'    (''1606 Sangam Blvd'',''361196'',''New Delhi'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 11 012 4811'', ''+91 11 083 4811''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Rodolfo.Dench@SCOTER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (468,''Rodolfo'',''Altman'',oehr_cust_address_typ'||chr(10)||
'   ';

s:=s||' (''1607 Sangam Blvd'',''361114'',''New Delhi'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 11 012 4813'', ''+91 11 083 4813''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Rodolfo.Altman@SHRIKE.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (470,''Roger'',''Mastroianni'',oehr_cust_address_typ'||chr(10)||
'    (''1609 Pakija Rd'','''',''New Delhi'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 11 012 4817'', ''+91 11 083 4817''),''hi'',''INDIA'',''3700'',';

wwv_flow_api.append_to_install_script(
  p_id => 313868220824618302 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||''||chr(10)||
'    ''Roger.Mastroianni@CREEPER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (473,''Rolf'',''Ashby'',oehr_cust_address_typ'||chr(10)||
'    (''1612 Talaivar St'','''',''Chennai'',''Tam'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4823'', ''+91 80 083 4823''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Rolf.Ashby@WATERTHRUSH.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (474,''Romy'',''Sharif'',oehr_cust_address_typ'||chr(10)||
' ';

s:=s||'   (''1613 Victoria St'','''',''Calcutta'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 33 012 4825'', ''+91 33 083 4825''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Romy.Sharif@SNIPE.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (475,''Romy'',''McCarthy'',oehr_cust_address_typ'||chr(10)||
'    (''1614 Gitanjali Rd'',''361168'',''Calcutta'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 33 012 4827'', ''+91 33 083 4827''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ';

s:=s||'''Romy.McCarthy@STILT.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (476,''Rosanne'',''Hopkins'',oehr_cust_address_typ'||chr(10)||
'    (''1615 Crackers Crt'',''361168'',''Chennai - India'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4829''),''hi'',''INDIA'',''300'',''Rosanne.Hopkins@ANI.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (477,''Rosanne'',''Douglas'',oehr_cust_address_typ'||chr(10)||
'    (''1616 Mr. India';

s:=s||' Ln'',''361168'',''Bombay - India'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 22 012 4831''),''hi'',''INDIA'',''300'',''Rosanne.Douglas@ANHINGA.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (478,''Rosanne'',''Baldwin'',oehr_cust_address_typ'||chr(10)||
'    (''1617 Crackers St'',''361168'',''Bangalore - India'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4833''),''hi'',''INDIA'',''300'',''Rosanne.Baldwin@AUKLET.COM'','||chr(10)||
'    ';

s:=s||'149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (479,''Roxanne'',''Shepherd'',oehr_cust_address_typ'||chr(10)||
'    (''1618 Villains St'',''361168'',''New Delhi - India'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 11 012 4835'', ''+91 11 083 4835''),''hi'',''INDIA'',''1200'','||chr(10)||
'    ''Roxanne.Shepherd@DUNLIN.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (480,''Roxanne'',''Michalkow'',oehr_cust_address_typ'||chr(10)||
'    (''1619 Bowlers';

s:=s||' Rd'',''361168'',''Chandigarh'',''Har'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 172 012 4837''),''hi'',''INDIA'',''1200'',''Roxanne.Michalkow@EIDER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (481,''Roy'',''Hulce'',oehr_cust_address_typ'||chr(10)||
'    (''1620 Sixers Crt'',''361168'',''Bombay'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 22 012 4839'', ''+91 22 083 4839''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Roy.Hulce@SISKIN.COM'','||chr(10)||
'    N';

s:=s||'ULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (482,''Roy'',''Dunaway'',oehr_cust_address_typ'||chr(10)||
'    (''1622 Roja St'',''361168'',''Chennai'',''Tam'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4841'', ''+91 80 083 4841''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Roy.Dunaway@WHIMBREL.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (483,''Roy'',''Bates'',oehr_cust_address_typ'||chr(10)||
'    (''1623 Hey Ram St'',''361168'',''Chennai - In';

s:=s||'dia'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4843'', ''+91 80 083 4843''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Roy.Bates@WIGEON.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (487,''Rufus'',''Dvrrie'',oehr_cust_address_typ'||chr(10)||
'    (''1627 Sowdagar St'',''361168'',''New Delhi'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 11 012 4851'', ''+91 11 083 4851''),''hi'',''INDIA'',''1900'','||chr(10)||
'    ''Rufus.Dvrrie@PLOVER.COM'','||chr(10)||
'    NU';

s:=s||'LL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (488,''Rufus'',''Belushi'',oehr_cust_address_typ'||chr(10)||
'    (''1628 Pataudi St'',''361168'',''New Delhi'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 11 012 4853'', ''+91 11 083 4853''),''hi'',''INDIA'',''1900'','||chr(10)||
' ''Rufus.Belushi@PUFFIN.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (492,''Sally'',''Edwards'',oehr_cust_address_typ'||chr(10)||
'    (''1632 Splash St'',''361168'',''Chandiga';

s:=s||'rh'',''Har'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 172 012 4861''),''hi'',''INDIA'',''2500'','||chr(10)||
' ''Sally.Edwards@TURNSTONE.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (496,''Scott'',''Jordan'',oehr_cust_address_typ'||chr(10)||
'    (''1636 Pretty Blvd'',''361168'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4869''),''hi'',''INDIA'',''5000'',''Scott.Jordan@WILLET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_custome';

s:=s||'rs VALUES '||chr(10)||
'    (605,''Shammi'',''Pacino'',oehr_cust_address_typ'||chr(10)||
'    (''1646 Brazil Blvd'',''361168'',''Chennai'',''Tam'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4887''),''hi'',''INDIA'',''500'',''Shammi.Pacino@BITTERN.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (606,''Sharmila'',''Kazan'',oehr_cust_address_typ'||chr(10)||
'    (''1647 Suspense St'',''361168'',''Cochin'',''Ker'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 48';

s:=s||'89''),''hi'',''INDIA'',''500'',''Sharmila.Kazan@BRANT.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (607,''Sharmila'',''Fonda'',oehr_cust_address_typ'||chr(10)||
'    (''1648 Anamika St'',''361168'',''Cochin'',''Ker'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4891''),''hi'',''INDIA'',''500'',''Sharmila.Fonda@BUFFLEHEAD.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (609,''Shelley'',''Taylor'',oehr_cust_address_typ';

s:=s||''||chr(10)||
'    (''1650 Teesri Manjil Crt'',''361168'',''Kashmir'','''',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 141 012 4895'', ''+91 141 083 4895''),''hi'',''INDIA'',''3700'','||chr(10)||
' ''Shelley.Taylor@CURLEW.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (615,''Shyam'',''Plummer'',oehr_cust_address_typ'||chr(10)||
'    (''1656 Veterans Rd'',''361168'',''Chennai'',''Tam'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4907''),''hi'',''INDIA'',''2500'',''Shyam';

s:=s||'.Plummer@VEERY.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (621,''Silk'',''Kurosawa'',oehr_cust_address_typ'||chr(10)||
'    (''1662 Talaivar St'',''361168'',''Chennai'',''Tam'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4919''),''hi'',''INDIA'',''1500'',''Silk.Kurosawa@NUTHATCH.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (627,''Sivaji'',''Gielgud'',oehr_cust_address_typ'||chr(10)||
'    (''1667 2010 St'',''61311'',''B';

s:=s||'atavia'',''Ker'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 4931''),''hi'',''INDIA'',''500'',''Sivaji.Gielgud@BULBUL.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (712,''M. Emmet'',''Stockwell'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Del Congresso 22'',''361185'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4501'', ''+39 6 083 4501''),''i'',''ITALY'',''3700'','||chr(10)||
'    ''M.Emmet.Stockwell@COOT.COM'','||chr(10)||
'    145,NULL';

s:=s||');'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (713,''M. Emmet'',''Olin'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Quattre Stagioni 4'',''361186'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4503'', ''+39 6 083 4503''),''i'',''ITALY'',''3700'','||chr(10)||
'    ''M.Emmet.Olin@CORMORANT.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (715,''Malcolm'',''Field'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Svizzera'',''361187'',''Roma'',''''';

s:=s||',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4507'', ''+39 6 083 4507''),''i'',''ITALY'',''2400'','||chr(10)||
'    ''Malcolm.Field@DOWITCHER.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (717,''Mammutti'',''Sutherland'',oehr_cust_address_typ'||chr(10)||
'    (''Ruella Delle Spiriti'',''361188'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4511''),''i'',''ITALY'',''500'','||chr(10)||
'    ''Mammutti.Sutherland@TOWHEE.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSE';

s:=s||'RT INTO oehr_customers VALUES '||chr(10)||
'    (719,''Mani'',''Kazan'',oehr_cust_address_typ'||chr(10)||
'    (''Via Del Disegno 194'',''361189'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4515''),''i'',''ITALY'',''500'',''Mani.Kazan@TROGON.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (721,''Mani'',''Buckley'',oehr_cust_address_typ'||chr(10)||
'    (''Via Delle Capeletti 52'',''361190'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 ';

s:=s||'012 4519''),''i'',''ITALY'',''500'',''Mani.Buckley@TURNSTONE.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (727,''Margaret'',''Ustinov'',oehr_cust_address_typ'||chr(10)||
'    (''Via Dello Croce 93'',''361193'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4531''),''i'',''ITALY'',''1200'',''Margaret.Ustinov@ANHINGA.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (729,''Margaux'',''Krige'',oehr_cust_address';

s:=s||'_typ'||chr(10)||
'    (''Via Di Firenze 231'',''361194'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4535'', ''+39 6 083 4535''),''i'',''ITALY'',''2400'','||chr(10)||
'    ''Margaux.Krige@DUNLIN.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (731,''Margaux'',''Capshaw'',oehr_cust_address_typ'||chr(10)||
'    (''Via Dolorosa 69'',''361195'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4539'', ''+39 6 083 4539''),''i'',''ITALY'',''2400'','||chr(10)||
'';

s:=s||'    ''Margaux.Capshaw@EIDER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (754,''Kevin'',''Goodman'',oehr_cust_address_typ'||chr(10)||
'    (''Via Notoriosa 1942'',''361234'',''Ventimiglia'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4385''),''i'',''ITALY'',''700'',''Kevin.Goodman@WIGEON.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (755,''Kevin'',''Cleveland'',oehr_cust_address_typ'||chr(10)||
'    (''Via Notorios';

s:=s||'a 1943'',''361235'',''Ventimiglia'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4387''),''i'',''ITALY'',''700'',''Kevin.Cleveland@WILLET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (756,''Kevin'',''Wilder'',oehr_cust_address_typ'||chr(10)||
'    (''Canale Grande 2'',''361183'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4389''),''i'',''ITALY'',''700'',''Kevin.Wilder@AUKLET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_cu';

s:=s||'stomers VALUES '||chr(10)||
'    (757,''Kiefer'',''Reynolds'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Cacchiatore 23'',''361184'',''Roma'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 6 012 4391''),''i'',''ITALY'',''700'',''Kiefer.Reynolds@AVOCET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (766,''Klaus'',''Young'',oehr_cust_address_typ'||chr(10)||
'    (''Via Del Disegno 194'',''361223'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 ';

s:=s||'49 012 4409''),''i'',''ITALY'',''600'',''Klaus.Young@OVENBIRD.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (767,''Klaus Maria'',''Russell'',oehr_cust_address_typ'||chr(10)||
'    (''Piazza Svizzera'',''361221'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4411''),''i'',''ITALY'',''100'',''KlausMaria.Russell@COOT.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (768,''Klaus Maria'',''MacLaine'',';

s:=s||'oehr_cust_address_typ'||chr(10)||
'    (''Via Dello Croce 93'',''361227'',''Tellaro'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4413''),''i'',''ITALY'',''100'',''KlausMaria.MacLaine@CHUKAR.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (769,''Kris'',''Harris'',oehr_cust_address_typ'||chr(10)||
'    (''Via Dello Croce 93'',''361217'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4415''),''i'',''ITALY'',''400'',''Kris.Har';

s:=s||'ris@DIPPER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (770,''Kris'',''Curtis'',oehr_cust_address_typ'||chr(10)||
'    (''Ruella Delle Spiriti'',''361222'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4417''),''i'',''ITALY'',''400'',''Kris.Curtis@DOWITCHER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (771,''Kris'',''de Niro'',oehr_cust_address_typ'||chr(10)||
'    (''Via Delle Capeletti 52'',''36';

s:=s||'1224'',''San Giminiano'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 49 012 4419''),''i'',''ITALY'',''400'',''Kris.deNiro@DUNLIN.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (772,''Kristin'',''Savage'',oehr_cust_address_typ'||chr(10)||
'    (''Via Delli Capelli 2'',''361226'',''Tellaro'','''',''IT''),oehr_phone_list_typ'||chr(10)||
'    (''+39 10 012 4421''),''i'',''ITALY'',''400'',''Kristin.Savage@CURLEW.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_cu';

s:=s||'stomers VALUES '||chr(10)||
'    (782,''Laurence'',''Seignier'',oehr_cust_address_typ'||chr(10)||
'    (''1971 Limelight Blvd'','''',''Samutprakarn'','''',''TH''),oehr_phone_list_typ'||chr(10)||
'    (''+66 76 012 4441''),''th'',''THAILAND'',''1200'',''Laurence.Seignier@CREEPER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (825,''Alain'',''Dreyfuss'',oehr_cust_address_typ'||chr(10)||
'    (''Harmoniegasse 3'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ';

s:=s||''||chr(10)||
'    (''+41 56 012 3527''),''d'',''SWITZERLAND'',''500'',''Alain.Dreyfuss@VEERY.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (826,''Alain'',''Barkin'',oehr_cust_address_typ'||chr(10)||
'    (''Sonnenberg 4'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 57 012 3529''),''d'',''SWITZERLAND'',''500'',''Alain.Barkin@VERDIN.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (827,''Alain'',''Siegel''';

s:=s||',oehr_cust_address_typ'||chr(10)||
'    (''Alfred E. Neumann-Weg 3'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 58 012 3531''),''d'',''SWITZERLAND'',''500'',''Alain.Siegel@VIREO.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (828,''Alan'',''Minnelli'',oehr_cust_address_typ'||chr(10)||
'    (''Dr. Herbert Bitto Str 23'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 59 012 3533'', ''+41 59';

s:=s||' 083 3533''),''d'',''SWITZERLAND'',''2300'','||chr(10)||
'    ''Alan.Minnelli@TANAGER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (829,''Alan'',''Hunter'',oehr_cust_address_typ'||chr(10)||
'    (''Taefernstr 4'',''3413'','||chr(10)||
'    ''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 60 012 3535'', ''+41 60 083 3535''),''d'',''SWITZERLAND'','||chr(10)||
'    ''2300'',''Alan.Hunter@TATTLER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'  ';

s:=s||'  (830,''Albert'',''Dutt'',oehr_cust_address_typ'||chr(10)||
'    (''Kreuzritterplatz 5'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 61 012 3537'', ''+41 61 083 3537''),''d'',''SWITZERLAND'',''3500'','||chr(10)||
'    ''Albert.Dutt@CURLEW.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (831,''Albert'',''Bel Geddes'',oehr_cust_address_typ'||chr(10)||
'    (''Helebardenweg 5'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_li';

s:=s||'st_typ'||chr(10)||
'    (''+41 62 012 3539'', ''+41 62 083 3539''),''d'',''SWITZERLAND'',''3500'','||chr(10)||
'    ''Albert.BelGeddes@DIPPER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (832,''Albert'',''Spacek'',oehr_cust_address_typ'||chr(10)||
'    (''Zum Freundlichen Nachbarn 5'',''3413'','||chr(10)||
'    ''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 63 012 3541'', ''+41 63 083 3541''),''d'',''SWITZERLAND'',''3500'','||chr(10)||
'    ''Albert.Spacek@DOWITC';

s:=s||'HER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (833,''Alec'',''Moranis'',oehr_cust_address_typ'||chr(10)||
'    (''Ziegenwiese 3'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 64 012 3543'', ''+41 64 083 3543''),''d'',''SWITZERLAND'',''3500'','||chr(10)||
'    ''Alec.Moranis@DUNLIN.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (834,''Alec'',''Idle'',oehr_cust_address_typ'||chr(10)||
'    (''Am Waldrand 5''';

s:=s||',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 65 012 3545'', ''+41 65 083 3545''),''d'',''SWITZERLAND'',''3500'','||chr(10)||
'    ''Alec.Idle@EIDER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (835,''Alexander'',''Eastwood'',oehr_cust_address_typ'||chr(10)||
'    (''Zur Kantine 9'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 66 012 3547''),''d'',''SWITZERLAND'',''1200'','||chr(10)||
'    ''Alexander.Ea';

s:=s||'stwood@AVOCET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (836,''Alexander'',''Berenger'',oehr_cust_address_typ'||chr(10)||
'    (''Grosse Bahnhostrasse 3'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 67 012 3549''),''d'',''SWITZERLAND'',''1200'','||chr(10)||
'    ''Alexander.Berenger@BECARD.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (837,''Alexander'',''Stanton'',oehr_cust_address_typ'||chr(10)||
' ';

s:=s||'   (''Paradeplatz 4'',''8001'',''Zuerich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 2 012 3551'', ''+41 2 083 3551''),''d'',''SWITZERLAND'',''1200'','||chr(10)||
'    ''Alexander.Stanton@AUKLET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (838,''Alfred'',''Nicholson'',oehr_cust_address_typ'||chr(10)||
'    (''Badenerstr 1941'',''8004'',''Zuerich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 3 012 3553'', ''+41 3 083 3553''),''d'',''SWITZERLAN';

s:=s||'D'',''3500'','||chr(10)||
'    ''Alfred.Nicholson@CREEPER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (839,''Alfred'',''Johnson'',oehr_cust_address_typ'||chr(10)||
'    (''Welschdoerfchen 1941'',''7001'',''Chur'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 81 012 3555''),''d'',''SWITZERLAND'',''3500'',''Alfred.Johnson@FLICKER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (840,''Ali'',''Elliott'',oehr_cust_address_typ'||chr(10)||
'    ';

s:=s||'(''Le Reduit'',''7064'',''Tschiertschen'',''GR'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 81 012 3557''),''d'',''SWITZERLAND'',''1400'',''Ali.Elliott@ANHINGA.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (841,''Ali'',''Boyer'',oehr_cust_address_typ'||chr(10)||
'    (''Bendlehn'',''9062'',''Trogen'',''SG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 71 012 3559''),''d'',''SWITZERLAND'',''1400'',''Ali.Boyer@WILLET.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT IN';

s:=s||'TO oehr_customers VALUES '||chr(10)||
'    (842,''Ali'',''Stern'',oehr_cust_address_typ'||chr(10)||
'    (''Spisertor 3'',''7000'',''St. Gallen'',''SG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 71 012 3561''),''d'',''SWITZERLAND'',''1400'',''Ali.Stern@YELLOWTHROAT.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (843,''Alice'',''Oates'',oehr_cust_address_typ'||chr(10)||
'    (''Langstr 14'',''8004'',''Zuerich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 4 012 3';

s:=s||'563''),''d'',''SWITZERLAND'',''700'',''Alice.Oates@BECARD.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (844,''Alice'',''Julius'',oehr_cust_address_typ'||chr(10)||
'    (''Roessligasse 4'',''8001'',''Zurich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 6 012 3565''),''d'',''SWITZERLAND'',''700'',''Alice.Julius@BITTERN.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (845,''Ally'',''Fawcett'',oehr_cust_address_typ'||chr(10)||
'  ';

s:=s||'  (''Zum Froehlichen Schweizer 3'',''8000'',''Zurich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 7 012 3567'', ''+41 7 083 3567''),''d'',''SWITZERLAND'',''5000'','||chr(10)||
'    ''Ally.Fawcett@PLOVER.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (846,''Ally'',''Brando'',oehr_cust_address_typ'||chr(10)||
'    (''Chrottenweg'',''3000'',''Bern'',''BE'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 31 012 3569'', ''+41 31 083 3569''),''d'',''SWITZERLAND''';

s:=s||',''5000'','||chr(10)||
'    ''Ally.Brando@PINTAIL.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (847,''Ally'',''Streep'',oehr_cust_address_typ'||chr(10)||
'    (''Bruppacher Str 3'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 68 012 3571'', ''+41 68 083 3571''),''d'',''SWITZERLAND'',''5000'','||chr(10)||
'    ''Ally.Streep@PIPIT.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (848,''Alonso'',''Olmos'',oehr_cust';

s:=s||'_address_typ'||chr(10)||
'    (''Limmatquai'',''8001'',''Zuerich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 5 012 3573'', ''+41 5 083 3573''),''d'',''SWITZERLAND'',''1800'','||chr(10)||
'    ''Alonso.Olmos@PHALAROPE.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (849,''Alonso'',''Kaurusmdki'',oehr_cust_address_typ'||chr(10)||
'    (''Dreikoenigsstr 3'',''8001'',''Zurich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 8 012 3575'', ''+41 8 083 3575''),''d'',''';

s:=s||'SWITZERLAND'',''1800'','||chr(10)||
'    ''Alonso.Kaurusmdki@PHOEBE.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (850,''Amanda'',''Finney'',oehr_cust_address_typ'||chr(10)||
'    (''Pfannenstilstr 13'',''8132'',''Egg'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 1 012 3577'', ''+41 1 083 3577''),''d'',''SWITZERLAND'',''2300'','||chr(10)||
'    ''Amanda.Finney@STILT.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (851,''Amanda'',''Brown'',o';

s:=s||'ehr_cust_address_typ'||chr(10)||
'    (''Kreuzstr 32'',''8032'',''Zurich'',''ZH'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 9 012 3579'', ''+41 9 083 3579''),''d'',''SWITZERLAND'',''2300'','||chr(10)||
'    ''Amanda.Brown@THRASHER.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (852,''Amanda'',''Tanner'',oehr_cust_address_typ'||chr(10)||
'    (''1539 Stripes Rd'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 69 012 3581'', ''+41 69 083 ';

s:=s||'3581''),''d'',''SWITZERLAND'',''2300'','||chr(10)||
'    ''Amanda.Tanner@TEAL.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (853,''Amrish'',''Palin'',oehr_cust_address_typ'||chr(10)||
'    (''1540 Stripes Crt'',''3413'',''Baden-Daettwil'',''AG'',''CH''),oehr_phone_list_typ'||chr(10)||
'    (''+41 70 012 3583''),''d'',''SWITZERLAND'',''400'',''Amrish.Palin@EIDER.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (905,''Billy'',''Hershey'',oehr_cust';

s:=s||'_address_typ'||chr(10)||
'    (''1592 Silverado St'',''361123'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3687''),''hi'',''INDIA'',''1400'',''Billy.Hershey@BULBUL.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (906,''Billy'',''Dench'',oehr_cust_address_typ'||chr(10)||
'    (''1593 Silverado St'',''361112'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3689''),''hi'',''INDIA'',''1400'',''Billy.Dench@CARA';

s:=s||'CARA.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (909,''Blake'',''Mastroianni'',oehr_cust_address_typ'||chr(10)||
'    (''1596 Commando Blvd'',''361126'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3695''),''hi'',''INDIA'',''1200'',''Blake.Mastroianni@FLICKER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (911,''Bo'',''Dickinson'',oehr_cust_address_typ'||chr(10)||
'    (''1598 Legend St'',''361149'',''';

s:=s||'Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3699'', ''+91 80 083 3699''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Bo.Dickinson@TANAGER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (912,''Bo'',''Ashby'',oehr_cust_address_typ'||chr(10)||
'    (''1599 Legend Rd'',''361128'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3701'', ''+91 80 083 3701''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Bo.Ashby@TATTLER.COM'','||chr(10)||
'';

s:=s||'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (913,''Bob'',''Sharif'',oehr_cust_address_typ'||chr(10)||
'    (''1600 Target Crt'',''361191'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3703'', ''+91 80 083 3703''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Bob.Sharif@TEAL.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (916,''Brian'',''Douglas'',oehr_cust_address_typ'||chr(10)||
'    (''1603 Rebel St'',''361129'',''Banga';

s:=s||'lore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3709''),''hi'',''INDIA'',''500'',''Brian.Douglas@AVOCET.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (917,''Brian'',''Baldwin'',oehr_cust_address_typ'||chr(10)||
'    (''1604 Volunteers Rd'',''361121'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3711''),''hi'',''INDIA'',''500'',''Brian.Baldwin@BECARD.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers ';

s:=s||'VALUES '||chr(10)||
'    (919,''Brooke'',''Michalkow'',oehr_cust_address_typ'||chr(10)||
'    (''1606 Volunteers Blvd'',''361196'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3715''),''hi'',''INDIA'',''3500'',''Brooke.Michalkow@GROSBEAK.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (920,''Bruce'',''Hulce'',oehr_cust_address_typ'||chr(10)||
'    (''1607 Abwdrts St'',''361114'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+9';

s:=s||'1 80 012 3717''),''hi'',''INDIA'',''3500'',''Bruce.Hulce@JACANA.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (921,''Bruce'',''Dunaway'',oehr_cust_address_typ'||chr(10)||
'    (''1608 Amadeus St'',''361198'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3719'', ''+91 80 083 3719''),''hi'',''INDIA'',''3500'','||chr(10)||
'    ''Bruce.Dunaway@JUNCO.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (923,''Bruno'',';

s:=s||'''Slater'',oehr_cust_address_typ'||chr(10)||
'    (''1610 Betrayal Crt'',''361119'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3723'', ''+91 80 083 3723''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Bruno.Slater@THRASHER.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (924,''Bruno'',''Montand'',oehr_cust_address_typ'||chr(10)||
'    (''1611 Carmen Blvd'',''361118'',''Bangalore'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3';

s:=s||'725'', ''+91 80 083 3725''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Bruno.Montand@TOWHEE.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (927,''Bryan'',''Belushi'',oehr_cust_address_typ'||chr(10)||
'    (''1614 Crackers Rd'',''361168'',''Bangalore - India'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3731'', ''+91 80 083 3731''),''hi'',''INDIA'',''2300'','||chr(10)||
'    ''Bryan.Belushi@TOWHEE.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers ';

s:=s||'VALUES '||chr(10)||
'    (928,''Burt'',''Spielberg'',oehr_cust_address_typ'||chr(10)||
'    (''1615 Crackers Crt'',''361168'',''Bangalore - India'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3733'', ''+91 80 083 3733''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Burt.Spielberg@TROGON.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (929,''Burt'',''Neeson'',oehr_cust_address_typ'||chr(10)||
'    (''1616 Crackers Blvd'',''361168'',''Bangalore - India'',''Kar'',';

s:=s||'''IN'')'||chr(10)||
'    ,oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3735'', ''+91 80 083 3735''),''hi'',''INDIA'',''5000'','||chr(10)||
'    ''Burt.Neeson@TURNSTONE.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (930,''Buster'',''Jackson'',oehr_cust_address_typ'||chr(10)||
'    (''1617 Crackers St'',''361168'',''Bangalore - India'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3737''),''hi'',''INDIA'',''900'',''Buster.Jackson@KILLDEER.COM'','||chr(10)||
'    149,NULL)';

s:=s||';'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (931,''Buster'',''Edwards'',oehr_cust_address_typ'||chr(10)||
'    (''1618 Footloose St'',''361168'',''Bangalore - India'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3739''),''hi'',''INDIA'',''900'',''Buster.Edwards@KINGLET.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (932,''Buster'',''Bogart'',oehr_cust_address_typ'||chr(10)||
'    (''1619 Footloose Rd'',''361168'',''Bangalore - India'',';

s:=s||'''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3741''),''hi'',''INDIA'',''900'',''Buster.Bogart@KISKADEE.COM'','||chr(10)||
'    NULL,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (934,''C. Thomas'',''Nolte'',oehr_cust_address_typ'||chr(10)||
'    (''1621 Gargon! Blvd'',''361168'',''Bangalore - India'',''Kar'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3745''),''hi'',''INDIA'',''600'',''C.Thomas.Nolte@PHOEBE.COM'','||chr(10)||
'    145,NULL);'||chr(10)||
'INSERT INTO oehr_cus';

s:=s||'tomers VALUES '||chr(10)||
'    (980,''Daniel'',''Loren'',oehr_cust_address_typ'||chr(10)||
'    (''1667 2010 St'',''61311'',''Batavia'',''IL'',''IN''),oehr_phone_list_typ'||chr(10)||
'    (''+91 80 012 3837''),''hi'',''INDIA'',''200'',''Daniel.Loren@REDSTART.COM'','||chr(10)||
'    149,NULL);'||chr(10)||
'INSERT INTO oehr_customers VALUES '||chr(10)||
'    (981,''Daniel'',''Gueney'',oehr_cust_address_typ'||chr(10)||
'    (''1668 Chong Tao'',''111181'',''Beijing'','''',''CN''),oehr_phone_list_typ'||chr(10)||
'    (''+86 10 012 3839''),''zh';

s:=s||'s'',''CHINA'',''200'',''Daniel.Gueney@REDPOLL.COM'','||chr(10)||
'    149,NULL); '||chr(10)||
''||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 147 '||chr(10)||
' WHERE c.cust_address.country_id IN (''CH'',''DE'',''IT'',''CA'');'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 145 '||chr(10)||
' WHERE c.cust_address.country_id=''US'' and c.cust_address.state_province=''IA'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 145'||chr(10)||
' WHERE c.cust_address.country_id=''US'' an';

s:=s||'d c.cust_address.state_province=''IN'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 145'||chr(10)||
' WHERE c.cust_address.country_id=''US'' and c.cust_address.state_province=''MD'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 145'||chr(10)||
' WHERE c.cust_address.country_id=''US'' and c.cust_address.state_province=''MI'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 145'||chr(10)||
' WHERE c.cust_address.country_id=''US'' and c.cust_address';

s:=s||'.state_province=''MN'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 149'||chr(10)||
' WHERE c.cust_address.country_id=''US'' and c.cust_address.state_province=''NY'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 149'||chr(10)||
' WHERE c.cust_address.country_id=''US'' and c.cust_address.state_province=''PA'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 145'||chr(10)||
' WHERE c.cust_address.country_id=''US'' and c.cust_address.state_province=';

s:=s||'''WI'';'||chr(10)||
''||chr(10)||
'UPDATE oehr_customers c SET account_mgr_id = 148'||chr(10)||
' WHERE c.cust_address.country_id IN (''CN'',''IN'',''JP'');'||chr(10)||
''||chr(10)||
'commit;';

wwv_flow_api.append_to_install_script(
  p_id => 313868220824618302 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      seed_products.sql '||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_product_information VALUES (1726'||chr(10)||
', ''LCD Monitor 11/PM'''||chr(10)||
', ''Liquid Cristal Display 11 inch passive monitor. The virtually-flat,'||chr(10)||
'high-resolution screen delivers outstanding image quality with reduced glare.'''||chr(10)||
', 11,3'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 102067'||chr(10)||
', ''under ';

s:=s||'development'''||chr(10)||
', 259'||chr(10)||
', 208'||chr(10)||
', ''http://www.www.supp-102067.com/cat/hw/p1726.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2359'||chr(10)||
', ''LCD Monitor 9/PM'''||chr(10)||
', ''Liquid Cristal Display 9 inch passive monitor. Enjoy the productivity that'||chr(10)||
'a small monitor can bring via more workspace on your desk. Easy setup with'||chr(10)||
'plug-and-play compatibility.'''||chr(10)||
', 11,3'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 102061'||chr(10)||
', ''orderable'''||chr(10)||
', 249'||chr(10)||
', 20';

s:=s||'6'||chr(10)||
', ''http://www.www.supp-102061.com/cat/hw/p2359.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3060'||chr(10)||
', ''Monitor 17/HR'''||chr(10)||
', ''CRT Monitor 17 inch (16 viewable) high resolution. Exceptional image'||chr(10)||
'performance and the benefit of additional screen space. This monitor offers'||chr(10)||
'sharp, color-rich monitor performance at an incredible value. With a host of'||chr(10)||
'leading features, including on-screen display cont';

s:=s||'rols.'''||chr(10)||
', 11,4'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102081'||chr(10)||
', ''orderable'''||chr(10)||
', 299'||chr(10)||
', 250'||chr(10)||
', ''http://www.supp-102081.com/cat/hw/p3060.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2243'||chr(10)||
', ''Monitor 17/HR/F'''||chr(10)||
', ''Monitor 17 inch (16 viewable) high resolution, flat screen. High density'||chr(10)||
'photon gun with Enhanced Elliptical Correction System for more consistent,'||chr(10)||
'accurate focus across the screen, even in the corners';

s:=s||'.'''||chr(10)||
', 11,4'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 350'||chr(10)||
', 302'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p2243.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3057'||chr(10)||
', ''Monitor 17/SD'''||chr(10)||
', ''CRT Monitor 17 inch (16 viewable) short depth. Delivers outstanding'||chr(10)||
'image clarity and precision. Gives professional color, technical'||chr(10)||
'engineering, and visualization/animation users the color fidelity they'||chr(10)||
'dem';

s:=s||'and, plus a large desktop for enhanced productivity.'''||chr(10)||
', 11,4'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 369'||chr(10)||
', 320'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p3057.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3061'||chr(10)||
', ''Monitor 19/SD'''||chr(10)||
', ''CRT Monitor 19 inch (18 viewable) short depth. High-contrast black'||chr(10)||
'screen coating: produces superior contrast and grayscale performance.'||chr(10)||
'The newly designed,';

s:=s||' amplified professional speakers with dynamic bass'||chr(10)||
'response bring all of your multimedia audio experiences to life with'||chr(10)||
'crisp, true-to-life sound and rich, deep bass tones. Plus, color-coded'||chr(10)||
'cables, simple plug-and-play setup and digital on-screen controls mean you'||chr(10)||
'are ready to set your sights on outrageous multimedia and the incredible'||chr(10)||
'Internet in just minutes.'''||chr(10)||
', 11,5'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
',';

s:=s||' 102094'||chr(10)||
', ''orderable'''||chr(10)||
', 499'||chr(10)||
', 437'||chr(10)||
', ''http://www.supp-102094.com/cat/hw/p3061.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2245'||chr(10)||
', ''Monitor 19/SD/M'''||chr(10)||
', ''Monitor 19 (18 Viewable) short depth, Monochrome. Outstanding image'||chr(10)||
'performance in a compact design. A simple, on-screen dislay menu helps you'||chr(10)||
'easily adjust screen dimensions, colors and image attributes. Just plug'||chr(10)||
'your monitor into your PC a';

s:=s||'nd you are ready to go.'''||chr(10)||
', 11,5'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102053'||chr(10)||
', ''orderable'''||chr(10)||
', 512'||chr(10)||
', 420'||chr(10)||
', ''http://www.supp-102053.com/cat/hw/p2245.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3065'||chr(10)||
', ''Monitor 21/D'''||chr(10)||
', ''CRT Monitor 21 inch (20 viewable). Digital OptiScan technology: supports'||chr(10)||
'resolutions up to 1600 x 1200 at 75Hz. Dimensions (HxWxD): 8.3 x 18.5 x 15'||chr(10)||
'inch. The detachable or attachable mon';

s:=s||'itor-powered Platinum Series speakers'||chr(10)||
'offer crisp sound and the convenience of a digital audio player jack. Just'||chr(10)||
'plug in your digital audio player and listen to tunes without powering up'||chr(10)||
'your PC.'''||chr(10)||
', 11,5'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102051'||chr(10)||
', ''orderable'''||chr(10)||
', 999'||chr(10)||
', 875'||chr(10)||
', ''http://www.supp-102051.com/cat/hw/p3065.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3331'||chr(10)||
', ''Monitor 21/HR'''||chr(10)||
', ''21 inch monit';

s:=s||'or (20 inch viewable) high resolution. This monitor is ideal'||chr(10)||
'for business, desktop publishing, and graphics-intensive applications. Enjoy'||chr(10)||
'the productivity that a large monitor can bring via more workspace for'||chr(10)||
'running applications.'''||chr(10)||
', 11,5'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102083'||chr(10)||
', ''orderable'''||chr(10)||
', 879'||chr(10)||
', 785'||chr(10)||
', ''http://www.supp-102083.com/cat/hw/p3331.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2252';

s:=s||''||chr(10)||
', ''Monitor 21/HR/M'''||chr(10)||
', ''Monitor 21 inch (20 viewable) high resolution, monochrome. Unit size:'||chr(10)||
'35.6 x 29.6 x 33.3 cm (14.6 kg) Package: 40.53 x 31.24 x 35.39 cm'||chr(10)||
'(16.5 kg). Horizontal frequency 31.5 - 54 kHz, Vertical frequency 50 - 120'||chr(10)||
'Hz. Universal power supply 90 - 132 V, 50 - 60 Hz.'''||chr(10)||
', 11,5'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102079'||chr(10)||
', ''obsolete'''||chr(10)||
', 889'||chr(10)||
', 717'||chr(10)||
', ''http://www.supp-102079.com/cat/hw/p2252.htm';

s:=s||'l'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3064'||chr(10)||
', ''Monitor 21/SD'''||chr(10)||
', ''Monitor 21 inch (20 viewable) short depth. Features include a 0.25-0.28'||chr(10)||
'Aperture Grille Pitch, resolution support up to 1920 x 1200 at 76Hz,'||chr(10)||
'on-screen displays, and a conductive anti-reflective film coating.'''||chr(10)||
', 11,5'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102096'||chr(10)||
', ''planned'''||chr(10)||
', 1023'||chr(10)||
', 909'||chr(10)||
', ''http://www.supp-102096.com/cat/hw/p3064.html''';

s:=s||');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3155'||chr(10)||
', ''Monitor Hinge - HD'''||chr(10)||
', ''Monitor Hinge, heavy duty, maximum monitor weight 30 kg'''||chr(10)||
', 11,4'||chr(10)||
', to_yminterval(''+10-00'')'||chr(10)||
', 102092'||chr(10)||
', ''orderable'''||chr(10)||
', 49'||chr(10)||
', 42'||chr(10)||
', ''http://www.supp-102092.com/cat/hw/p3155.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3234'||chr(10)||
', ''Monitor Hinge - STD'''||chr(10)||
', ''Standard Monitor Hinge, maximum monitor weight 10 kg'''||chr(10)||
', 11,3'||chr(10)||
', to_ymin';

s:=s||'terval(''+10-00'')'||chr(10)||
', 102072'||chr(10)||
', ''orderable'''||chr(10)||
', 39'||chr(10)||
', 34'||chr(10)||
', ''http://www.supp-102072.com/cat/hw/p3234.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3350'||chr(10)||
', ''Plasma Monitor 10/LE/VGA'''||chr(10)||
', ''10 inch low energy plasma monitor, VGA resolution'''||chr(10)||
', 11,3'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102068'||chr(10)||
', ''orderable'''||chr(10)||
', 740'||chr(10)||
', 630'||chr(10)||
', ''http://www.supp-102068.com/cat/hw/p3350.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (22';

s:=s||'36'||chr(10)||
', ''Plasma Monitor 10/TFT/XGA'''||chr(10)||
', ''10 inch TFT XGA flatscreen monitor for laptop computers'''||chr(10)||
', 11,3'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102090'||chr(10)||
', ''under development'''||chr(10)||
', 964'||chr(10)||
', 863'||chr(10)||
', ''http://www.supp-102090.com/cat/hw/p2236.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3054'||chr(10)||
', ''Plasma Monitor 10/XGA'''||chr(10)||
', ''10 inch standard plasma monitor, XGA resolution. This virtually-flat,'||chr(10)||
'high-resolution screen delivers';

s:=s||' outstanding image quality with reduced glare.'''||chr(10)||
', 11,3'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 600'||chr(10)||
', 519'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p3054.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1782'||chr(10)||
', ''Compact 400/DQ'''||chr(10)||
', ''400 characters per second high-speed draft printer. Dimensions (HxWxD):'||chr(10)||
'17.34 x 24.26 x 26.32 inch. Interface: RS-232 serial (9-pin), no expansion'||chr(10)||
'slots. Paper s';

s:=s||'ize: A4, US Letter.'''||chr(10)||
', 12,4'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102088'||chr(10)||
', ''obsolete'''||chr(10)||
', 125'||chr(10)||
', 108'||chr(10)||
', ''http://www.supp-102088.com/cat/hw/p1782.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2430'||chr(10)||
', ''Compact 400/LQ'''||chr(10)||
', ''400 characters per second high-speed letter-quality printer.'||chr(10)||
'Dimensions (HxWxD): 12.37 x 27.96 x 23.92 inch. Interface: RS-232 serial'||chr(10)||
'(25-pin), 3 expansion slots. Paper size: A2, A3, A4.'''||chr(10)||
',';

s:=s||' 12,4'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102087'||chr(10)||
', ''orderable'''||chr(10)||
', 175'||chr(10)||
', 143'||chr(10)||
', ''http://www.supp-102087.com/cat/hw/p2430.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1792'||chr(10)||
', ''Industrial 600/DQ'''||chr(10)||
', ''Wide carriage color capability 600 characters per second high-speed'||chr(10)||
'draft printer. Dimensions (HxWxD): 22.31 x 25.73 x 20.12 inch. Paper size:'||chr(10)||
'3x5 inch to 11x17 inch full bleed wide format.'''||chr(10)||
', 12,4'||chr(10)||
', to_ymin';

s:=s||'terval(''+05-00'')'||chr(10)||
', 102088'||chr(10)||
', ''orderable'''||chr(10)||
', 225'||chr(10)||
', 180'||chr(10)||
', ''http://www.supp-102088.com/cat/hw/p1792.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1791'||chr(10)||
', ''Industrial 700/HD'''||chr(10)||
', ''700 characters per second dot-matrix printer with harder body and dust'||chr(10)||
'protection for industrial uses. Interface: Centronics parallel, IEEE 1284'||chr(10)||
'compliant. Paper size: 3x5 inch to 11x17 inch full bleed wide format.'||chr(10)||
'Memory:';

s:=s||' 4MB. Dimensions (HxWxD): 9.3 x 16.5 x 13 inch.'''||chr(10)||
', 12,5'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 102086'||chr(10)||
', ''orderable'''||chr(10)||
', 275'||chr(10)||
', 239'||chr(10)||
', ''http://www.supp-102086.com/cat/hw/p1791.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2302'||chr(10)||
', ''Inkjet B/6'''||chr(10)||
', ''Inkjet Printer, black and white, 6 pages per minute, resolution 600x300'||chr(10)||
'dpi. Interface: Centronics parallel, IEEE 1284 compliant. Dimensions'||chr(10)||
'(HxWxD): 7.3 x 17.5 x 1';

s:=s||'4 inch. Paper size: A3, A4, US legal. No'||chr(10)||
'expansion slots.'''||chr(10)||
', 12,3'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102096'||chr(10)||
', ''orderable'''||chr(10)||
', 150'||chr(10)||
', 121'||chr(10)||
', ''http://www.supp-102096.com/cat/hw/p2302.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2453'||chr(10)||
', ''Inkjet C/4'''||chr(10)||
', ''Inkjet Printer, color (with two separate ink cartridges), 6 pages per'||chr(10)||
'minute black and white, 4 pages per minute color, resolution 600x300 dpi.'||chr(10)||
'Interface:';

s:=s||' Biodirectional IEEE 1284 compliant parallel interface and'||chr(10)||
'RS-232 serial (9-pin) interface 2 open EIO expansion slots. Memory:'||chr(10)||
'8MB 96KB receiver buffer.'''||chr(10)||
', 12,3'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102090'||chr(10)||
', ''orderable'''||chr(10)||
', 195'||chr(10)||
', 174'||chr(10)||
', ''http://www.supp-102090.com/cat/hw/p2453.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1797'||chr(10)||
', ''Inkjet C/8/HQ'''||chr(10)||
', ''Inkjet printer, color, 8 pages per minute, high resoluti';

s:=s||'on (photo'||chr(10)||
'quality). Memory: 16MB. Dimensions (HxWxD): 7.3 x 17.5 x 14 inch. Paper'||chr(10)||
'size: A4, US Letter, envelopes. Interface: Centronics parallel, IEEE'||chr(10)||
'1284 compliant.'''||chr(10)||
', 12,3'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102094'||chr(10)||
', ''orderable'''||chr(10)||
', 349'||chr(10)||
', 288'||chr(10)||
', ''http://www.supp-102094.com/cat/hw/p1797.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2459'||chr(10)||
', ''LaserPro 1200/8/BW'''||chr(10)||
', ''Professional black and white laserpri';

s:=s||'nter, resolution 1200 dpi, 8 pages'||chr(10)||
'per second. Dimensions (HxWxD): 22.37 x 19.86 x 21.92 inch. Software:'||chr(10)||
'Enhanced driver support for SPNIX v4.0; MS-DOS Built-in printer drivers:'||chr(10)||
'ZoomSmart scaling technology, billboard, handout, mirror, watermark, print'||chr(10)||
'preview, quick sets, emulate laserprinter margins.'''||chr(10)||
', 12,5'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102099'||chr(10)||
', ''under development'''||chr(10)||
', 699'||chr(10)||
', 568'||chr(10)||
', ''http://www.supp-';

s:=s||'102099.com/cat/hw/p2459.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3127'||chr(10)||
', ''LaserPro 600/6/BW'''||chr(10)||
', ''Standard black and white laserprinter, resolution 600 dpi, 6 pages per'||chr(10)||
'second. Interface: Centronics parallel, IEEE 1284 compliant. Memory: 8MB'||chr(10)||
'96KB receiver buffer. MS-DOS ToolBox utilities for SPNIX AutoCAM v.17'||chr(10)||
'compatible driver.'''||chr(10)||
', 12,4'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102087'||chr(10)||
', ''orderable'''||chr(10)||
', 4';

s:=s||'98'||chr(10)||
', 444'||chr(10)||
', ''http://www.supp-102087.com/cat/hw/p3127.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2254'||chr(10)||
', ''HD 10GB /I'''||chr(10)||
', ''10GB capacity hard disk drive (internal). These drives are intended for'||chr(10)||
'use in today''''s demanding, data-critical enterprise environments and are'||chr(10)||
'ideal for use in RAID applications. Universal option kits are configured'||chr(10)||
'and pre-mounted in the appropriate hot plug tray for i';

s:=s||'mmediate installation'||chr(10)||
'into your corporate server or storage system.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102071'||chr(10)||
', ''obsolete'''||chr(10)||
', 453'||chr(10)||
', 371'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p2254.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3353'||chr(10)||
', ''HD 10GB /R'''||chr(10)||
', ''10GB Removable hard disk drive for 10GB Removable HD drive. Supra7'||chr(10)||
'disk drives provide the latest technology to improve enterprise'||chr(10)||
'performance, i';

s:=s||'ncreasing the maximum data transfer rate up to 160MB/s.'''||chr(10)||
', 13,1'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102071'||chr(10)||
', ''obsolete'''||chr(10)||
', 489'||chr(10)||
', 413'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p3353.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3069'||chr(10)||
', ''HD 10GB /S'''||chr(10)||
', ''10GB hard disk drive for Standard Mount. Backward compatible with'||chr(10)||
'Supra5 systems, users are free to deploy and re-deploy these drives to'||chr(10)||
'quickly deliver incr';

s:=s||'eased storage capacity. Supra drives eliminate the'||chr(10)||
'risk of firmware incompatibility.'''||chr(10)||
', 13,1'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102051'||chr(10)||
', ''obsolete'''||chr(10)||
', 436'||chr(10)||
', 350'||chr(10)||
', ''http://www.supp-102051.com/cat/hw/p3069.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2253'||chr(10)||
', ''HD 10GB @5400 /SE'''||chr(10)||
', ''10GB capacity hard disk drive (external) SCSI interface, 5400 RPM.'||chr(10)||
'Universal option kits are configured and pre-mounted i';

s:=s||'n the appropriate'||chr(10)||
'hot plug tray for immediate installation into your corporate server or'||chr(10)||
'storage system. Supra drives eliminate the risk of firmware incompatibility.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102069'||chr(10)||
', ''obsolete'''||chr(10)||
', 399'||chr(10)||
', 322'||chr(10)||
', ''http://www.supp-102069.com/cat/hw/p2253.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3354'||chr(10)||
', ''HD 12GB /I'''||chr(10)||
', ''12GB capacity harddisk drive (internal). Supra ';

s:=s||'drives eliminate the risk'||chr(10)||
'of firmware incompatibility. Backward compatibility: You can mix or'||chr(10)||
'match Supra2 and Supra3 devices for optimized solutions and future growth.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102066'||chr(10)||
', ''orderable'''||chr(10)||
', 543'||chr(10)||
', 478'||chr(10)||
', ''http://www.supp-102066.com/cat/hw/p3354.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3072'||chr(10)||
', ''HD 12GB /N'''||chr(10)||
', ''12GB hard disk drive for Narrow Mount. Supr';

s:=s||'a9 hot pluggable hard disk'||chr(10)||
'drives provide the ability to install or remove drives on-line. Our hot'||chr(10)||
'pluggable hard disk drives are required to meet our rigorous standards'||chr(10)||
'for reliability and performance.'''||chr(10)||
', 13,1'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102061'||chr(10)||
', ''orderable'''||chr(10)||
', 567'||chr(10)||
', 507'||chr(10)||
', ''http://www.supp-102061.com/cat/hw/p3072.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3334'||chr(10)||
', ''HD 12GB /R'''||chr(10)||
', ''12GB Remo';

s:=s||'vable hard disk drive. With compatibility across many enterprise'||chr(10)||
'platforms, you are free to deploy and re-deploy this drive to quickly'||chr(10)||
'deliver increased storage capacity. Supra7 Universal disk drives are the'||chr(10)||
'second generation of high performance hot plug drives sharing compatibility'||chr(10)||
'across corporate servers and external storage enclosures.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102090'||chr(10)||
', ''orderable'''||chr(10)||
',';

s:=s||' 612'||chr(10)||
', 512'||chr(10)||
', ''http://www.supp-102090.com/cat/hw/p3334.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3071'||chr(10)||
', ''HD 12GB /S'''||chr(10)||
', ''12GB hard disk drive for Standard Mount. Supra9 hot pluggable hard disk'||chr(10)||
'drives provide the ability to install or remove drives on-line. Our hot'||chr(10)||
'pluggable hard disk drives are required to meet our rigorous standards'||chr(10)||
'for reliability and performance.'''||chr(10)||
', 13,1'||chr(10)||
', to_yminterva';

s:=s||'l(''+03-00'')'||chr(10)||
', 102071'||chr(10)||
', ''orderable'''||chr(10)||
', 633'||chr(10)||
', 553'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p3071.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2255'||chr(10)||
', ''HD 12GB @7200 /SE'''||chr(10)||
', ''12GB capacity hard disk drive (external) SCSI, 7200 RPM. These drives'||chr(10)||
'are intended for use in today''''s demanding, data-critical enterprise'||chr(10)||
'environments and can be used in RAID applications. Universal option kits'||chr(10)||
'are configured ';

s:=s||'and pre-mounted in the appropriate hot plug tray for'||chr(10)||
'immediate installation into your corporate server or storage system.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102057'||chr(10)||
', ''orderable'''||chr(10)||
', 775'||chr(10)||
', 628'||chr(10)||
', ''http://www.supp-102057.com/cat/hw/p2255.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1743'||chr(10)||
', ''HD 18.2GB @10000 /E'''||chr(10)||
', ''External hard drive disk - 18.2 GB, rated up to 10,000 RPM. These'||chr(10)||
'drives are inte';

s:=s||'nded for use in today''''s demanding, data-critical'||chr(10)||
'enterprise environments and are ideal for use in RAID applications.'''||chr(10)||
', 13,3'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102078'||chr(10)||
', ''planned'''||chr(10)||
', 800'||chr(10)||
', 661'||chr(10)||
', ''http://www.supp-102078.com/cat/hw/p1743.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2382'||chr(10)||
', ''HD 18.2GB@10000 /I'''||chr(10)||
', ''18.2 GB SCSI hard disk @ 10000 RPM (internal). Supra7 Universal'||chr(10)||
'disk drives provide an u';

s:=s||'nequaled level of investment protection and'||chr(10)||
'simplification for customers by enabling drive compatibility across'||chr(10)||
'many enterprise platforms.'''||chr(10)||
', 13,3'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102050'||chr(10)||
', ''under development'''||chr(10)||
', 850'||chr(10)||
', 731'||chr(10)||
', ''http://www.supp-102050.com/cat/hw/p2382.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3399'||chr(10)||
', ''HD 18GB /SE'''||chr(10)||
', ''18GB SCSI external hard disk drive. Supra5 Universal hard disk'||chr(10)||
'd';

s:=s||'rives provide the ability to hot plug between various servers, RAID'||chr(10)||
'arrays, and external storage shelves.'''||chr(10)||
', 13,3'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102083'||chr(10)||
', ''under development'''||chr(10)||
', 815'||chr(10)||
', 706'||chr(10)||
', ''http://www.supp-999999.com/cat/hw/p3333.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3073'||chr(10)||
', ''HD 6GB /I'''||chr(10)||
', ''6GB capacity hard disk drive (internal). Supra drives eliminate the'||chr(10)||
'risk of firmware incompatibilit';

s:=s||'y.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 102072'||chr(10)||
', ''obsolete'''||chr(10)||
', 224'||chr(10)||
', 197'||chr(10)||
', ''http://www.supp-102083.com/cat/hw/p3073.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1768'||chr(10)||
', ''HD 8.2GB @5400'''||chr(10)||
', ''Hard drive disk - 8.2 GB, rated up to 5,400 RPM. Supra drives'||chr(10)||
'eliminate the risk of firmware incompatibility. Standard serial'||chr(10)||
'RS-232 interface.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102093'||chr(10)||
', ''orderable'''||chr(10)||
', 345';

s:=s||''||chr(10)||
', 306'||chr(10)||
', ''http://www.supp-102093.com/cat/hw/p1768.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2410'||chr(10)||
', ''HD 8.4GB @5400'''||chr(10)||
', ''8.4 GB hard disk @ 5400 RPM. Reduced cost of ownership: Drives can'||chr(10)||
'be utilized across enterprise platforms. This hot pluggable hard disk'||chr(10)||
'drive is required to meet your rigorous standards for reliability'||chr(10)||
'and performance.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102061'||chr(10)||
', ''orde';

s:=s||'rable'''||chr(10)||
', 357'||chr(10)||
', 319'||chr(10)||
', ''http://www.supp-102061.com/cat/hw/p2410.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2257'||chr(10)||
', ''HD 8GB /I'''||chr(10)||
', ''8GB capacity hard disk drive (internal). Supra9 hot pluggable'||chr(10)||
'hard disk drives provide the ability to install or remove drives'||chr(10)||
'on-line. Backward compatibility: You can mix Supra2 and Supra3'||chr(10)||
'devices for optimized solutions and future growth.'''||chr(10)||
', 13,1'||chr(10)||
', to_yminterva';

s:=s||'l(''+03-00'')'||chr(10)||
', 102061'||chr(10)||
', ''orderable'''||chr(10)||
', 399'||chr(10)||
', 338'||chr(10)||
', ''http://www.supp-102061.com/cat/hw/p2257.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3400'||chr(10)||
', ''HD 8GB /SE'''||chr(10)||
', ''8GB capacity SCSI hard disk drive (external). Supra7 disk drives'||chr(10)||
'provide the latest technology to improve enterprise performance,'||chr(10)||
'increasing the maximum data transfer rate up to 255MB/s.'''||chr(10)||
', 13,2'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102063'||chr(10)||
', ''o';

s:=s||'rderable'''||chr(10)||
', 389'||chr(10)||
', 337'||chr(10)||
', ''http://www.supp-102063.com/cat/hw/p3400.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3355'||chr(10)||
', ''HD 8GB /SI'''||chr(10)||
', ''8GB SCSI hard disk drive, internal. With compatibility across many'||chr(10)||
'enterprise platforms, you are free to deploy and re-deploy this drive'||chr(10)||
'to quickly deliver increased storage capacity. '''||chr(10)||
', 13,1'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102050'||chr(10)||
', ''orderable'''||chr(10)||
', NULL'||chr(10)||
', NULL'||chr(10)||
', ''';

s:=s||'http://www.supp-102050.com/cat/hw/p3355.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1772'||chr(10)||
', ''HD 9.1GB @10000'''||chr(10)||
', ''Hard disk drive - 9.1 GB, rated up to 10,000 RPM. These drives'||chr(10)||
'are intended for use in data-critical enterprise environments.'||chr(10)||
'Ease of doing business: you can easily select the drives you need'||chr(10)||
'regardless of the application in which they will be deployed.'''||chr(10)||
', 13,3'||chr(10)||
', to_yminterval(''';

s:=s||'+05-00'')'||chr(10)||
', 102070'||chr(10)||
', ''orderable'''||chr(10)||
', 456'||chr(10)||
', 393'||chr(10)||
', ''http://www.supp-102070.com/cat/hw/p1772.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2414'||chr(10)||
', ''HD 9.1GB @10000 /I'''||chr(10)||
', ''9.1 GB SCSI hard disk @ 10000 RPM (internal). Supra7 disk'||chr(10)||
'drives are available in 10,000 RPM spindle speeds and capacities'||chr(10)||
'of 18GB and 9.1 GB. SCSI and RS-232 interfaces.'''||chr(10)||
', 13,3'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 102098'||chr(10)||
', ''orderable'''||chr(10)||
',';

s:=s||' 454'||chr(10)||
', 399'||chr(10)||
', ''http://www.supp-102098.com/cat/hw/p2414.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2415'||chr(10)||
', ''HD 9.1GB @7200'''||chr(10)||
', ''9.1 GB hard disk @ 7200 RPM. Universal option kits are'||chr(10)||
'configured and pre-mounted in the appropriate hot plug tray'||chr(10)||
'for immediate installation into your corporate server or storage'||chr(10)||
'system.'''||chr(10)||
', 13,3'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 102063'||chr(10)||
', ''orderable'''||chr(10)||
', 359'||chr(10)||
', 309'||chr(10)||
', ''http:/';

s:=s||'/www.supp-102063.com/cat/hw/p2415.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2395'||chr(10)||
', ''32MB Cache /M'''||chr(10)||
', ''32MB Mirrored cache memory (100-MHz Registered SDRAM)'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102093'||chr(10)||
', ''orderable'''||chr(10)||
', 123'||chr(10)||
', 109'||chr(10)||
', ''http://www.supp-102093.com/cat/hw/p2395.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1755'||chr(10)||
', ''32MB Cache /NM'''||chr(10)||
', ''32MB Non-Mirrored cache memory'''||chr(10)||
', 14,1'||chr(10)||
', ';

s:=s||'to_yminterval(''+00-06'')'||chr(10)||
', 102076'||chr(10)||
', ''orderable'''||chr(10)||
', 121'||chr(10)||
', 99'||chr(10)||
', ''http://www.supp-102076.com/cat/hw/p1755.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2406'||chr(10)||
', ''64MB Cache /M'''||chr(10)||
', ''64MB Mirrored cache memory'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102059'||chr(10)||
', ''orderable'''||chr(10)||
', 223'||chr(10)||
', 178'||chr(10)||
', ''http://www.supp-102059.com/cat/hw/p2406.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2404'||chr(10)||
', ''64MB Cache /NM'''||chr(10)||
', ''6';

s:=s||'4 MB Non-mirrored cache memory. FPM memory chips are'||chr(10)||
'implemented on 5 volt SIMMs, but are also available on'||chr(10)||
'3.3 volt DIMMs.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102087'||chr(10)||
', ''orderable'''||chr(10)||
', 221'||chr(10)||
', 180'||chr(10)||
', ''http://www.supp-102087.com/cat/hw/p2404.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1770'||chr(10)||
', ''8MB Cache /NM'''||chr(10)||
', ''8MB Non-Mirrored Cache Memory (100-MHz Registered SDRAM)'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00';

s:=s||'-06'')'||chr(10)||
', 102050'||chr(10)||
', ''orderable'''||chr(10)||
', NULL'||chr(10)||
', 73'||chr(10)||
', ''http://www.supp-102050.com/cat/hw/p1770.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2412'||chr(10)||
', ''8MB EDO Memory'''||chr(10)||
', ''8 MB 8x32 EDO SIM memory. Extended Data Out memory differs from FPM in a'||chr(10)||
'small, but significant design change. Unlike FPM, the data output drivers'||chr(10)||
'for EDO remain on when the memory controller removes the column address to'||chr(10)||
'begin the next';

s:=s||' cycle. Therefore, a new data cycle can begin before the'||chr(10)||
'previous cycle has completed. EDO is available on SIMMs and DIMMs, in 3.3'||chr(10)||
'and 5 volt varieties.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102058'||chr(10)||
', ''obsolete'''||chr(10)||
', 98'||chr(10)||
', 83'||chr(10)||
', ''http://www.supp-102058.com/cat/hw/p2412.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2378'||chr(10)||
', ''DIMM - 128 MB'''||chr(10)||
', ''128 MB DIMM memory. The main reason for the change from SIM';

s:=s||'Ms to DIMMs is'||chr(10)||
'to support the higher bus widths of 64-bit processors. DIMMs are 64- or'||chr(10)||
'72-bits wide; SIMMs are only 32- or 36-bits wide (with parity).'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102050'||chr(10)||
', ''orderable'''||chr(10)||
', 305'||chr(10)||
', 247'||chr(10)||
', ''http://www.supp-102050.com/cat/hw/p2378.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3087'||chr(10)||
', ''DIMM - 16 MB'''||chr(10)||
', ''Citrus OLX DIMM - 16 MB capacity.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''';

s:=s||'+00-06'')'||chr(10)||
', 102081'||chr(10)||
', ''obsolete'''||chr(10)||
', 124'||chr(10)||
', 99'||chr(10)||
', ''http://www.supp-102081.com/cat/hw/p3087.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2384'||chr(10)||
', ''DIMM - 1GB'''||chr(10)||
', ''Memory DIMM: RAM - 1 GB capacity.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102074'||chr(10)||
', ''under development'''||chr(10)||
', 599'||chr(10)||
', 479'||chr(10)||
', ''http://www.supp-102074.com/cat/hw/p2384.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1749'||chr(10)||
', ''DIMM - 256MB'''||chr(10)||
', ''Memory ';

s:=s||'DIMM: RAM 256 MB. (100-MHz Registered SDRAM)'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102053'||chr(10)||
', ''orderable'''||chr(10)||
', 337'||chr(10)||
', 300'||chr(10)||
', ''http://www.supp-102053.com/cat/hw/p1749.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1750'||chr(10)||
', ''DIMM - 2GB'''||chr(10)||
', ''Memory DIMM: RAM, 2 GB capacity.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102052'||chr(10)||
', ''orderable'''||chr(10)||
', 699'||chr(10)||
', 560'||chr(10)||
', ''http://www.supp-102052.com/cat/hw/p1750.html'');'||chr(10)||
'INSERT INTO oe';

s:=s||'hr_product_information VALUES (2394'||chr(10)||
', ''DIMM - 32MB'''||chr(10)||
', ''32 MB DIMM Memory upgrade'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102054'||chr(10)||
', ''orderable'''||chr(10)||
', 128'||chr(10)||
', 106'||chr(10)||
', ''http://www.supp-102054.com/cat/hw/p2394.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2400'||chr(10)||
', ''DIMM - 512 MB'''||chr(10)||
', ''512 MB DIMM memory. Improved memory upgrade granularity: Fewer DIMMs are'||chr(10)||
'required to upgrade a system than it would require if u';

s:=s||'sing SIMMs in the same'||chr(10)||
'system. Increased maximum memory ceilings: Given the same number of memory'||chr(10)||
'slots, the maximum memory of a system using DIMMs is more than one using'||chr(10)||
'SIMMs. DIMMs have separate contacts on each side of the board, which provide'||chr(10)||
'two times the data rate as one SIMM.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102098'||chr(10)||
', ''under development'''||chr(10)||
', 448'||chr(10)||
', 380'||chr(10)||
', ''http://www.supp-102098.com/cat/hw/p';

s:=s||'2400.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1763'||chr(10)||
', ''DIMM - 64MB'''||chr(10)||
', ''Memory DIMM: RAM, 64MB (100-MHz Unregistered ECC SDRAM)'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102069'||chr(10)||
', ''orderable'''||chr(10)||
', 247'||chr(10)||
', 202'||chr(10)||
', ''http://www.supp-102069.com/cat/hw/p1763.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2396'||chr(10)||
', ''EDO - 32MB'''||chr(10)||
', ''Memory EDO SIM: RAM, 32 MB (100-MHz Unregistered ECC SDRAM). Like FPM,'||chr(10)||
'EDO';

s:=s||' is available on SIMMs and DIMMs, in 3.3 and 5 volt varieties If EDO'||chr(10)||
'memory is installed in a computer that was not designed to support it,'||chr(10)||
'the memory may not work.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102051'||chr(10)||
', ''orderable'''||chr(10)||
', 179'||chr(10)||
', 149'||chr(10)||
', ''http://www.supp-102051.com/cat/hw/p2396.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2272'||chr(10)||
', ''RAM - 16 MB'''||chr(10)||
', ''Memory SIMM: RAM - 16 MB capacity.'''||chr(10)||
', 14,1'||chr(10)||
', t';

s:=s||'o_yminterval(''+01-00'')'||chr(10)||
', 102074'||chr(10)||
', ''obsolete'''||chr(10)||
', 135'||chr(10)||
', 110'||chr(10)||
', ''http://www.supp-102074.com/cat/hw/p2272.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2274'||chr(10)||
', ''RAM - 32 MB'''||chr(10)||
', ''Memory SIMM: RAM - 32 MB capacity.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102064'||chr(10)||
', ''orderable'''||chr(10)||
', 161'||chr(10)||
', 135'||chr(10)||
', ''http://www.supp-102064.com/cat/hw/p2274.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3090'||chr(10)||
', ''RAM - 48 MB'''||chr(10)||
', ';

s:=s||'''Random Access Memory, SIMM - 48 MB capacity.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102084'||chr(10)||
', ''orderable'''||chr(10)||
', 193'||chr(10)||
', 170'||chr(10)||
', ''http://www.supp-102084.com/cat/hw/p3090.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1739'||chr(10)||
', ''SDRAM - 128 MB'''||chr(10)||
', ''SDRAM memory, 128 MB capacity. SDRAM can access data at speeds up to 100'||chr(10)||
'MHz, which is up to four times as fast as standard DRAMs. The advantages of'||chr(10)||
'SDRAM can be ';

s:=s||'fully realized, however, only by computers designed to support'||chr(10)||
'SDRAM. SDRAM is available on 5 and 3.3 volt DIMMs.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102077'||chr(10)||
', ''orderable'''||chr(10)||
', 299'||chr(10)||
', 248'||chr(10)||
', ''http://www.supp-102077.com/cat/hw/p1739.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3359'||chr(10)||
', ''SDRAM - 16 MB'''||chr(10)||
', ''SDRAM memory upgrade module, 16 MB. Synchronous Dynamic Random Access'||chr(10)||
'Memory was introduced aft';

s:=s||'er EDO. Its architecture and operation are based on'||chr(10)||
'those of the standard DRAM, but SDRAM provides a revolutionary change to main'||chr(10)||
'memory that further reduces data retrieval times. SDRAM is synchronized to'||chr(10)||
'the system clock that controls the CPU. This means that the system clock'||chr(10)||
'controlling the functions of the microprocessor also controls the SDRAM'||chr(10)||
'functions. This enables the memory controller to k';

s:=s||'now on which clock cycle'||chr(10)||
'a data request will be ready, and therefore eliminates timing delays.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102059'||chr(10)||
', ''orderable'''||chr(10)||
', 111'||chr(10)||
', 99'||chr(10)||
', ''http://www.supp-102059.com/cat/hw/p3359.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3088'||chr(10)||
', ''SDRAM - 32 MB'''||chr(10)||
', ''SDRAM module with ECC - 32 MB capacity. SDRAM has multiple memory banks'||chr(10)||
'that can work simultaneously. Switching bet';

s:=s||'ween banks allows for a'||chr(10)||
'continuous data flow.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102057'||chr(10)||
', ''orderable'''||chr(10)||
', 258'||chr(10)||
', 220'||chr(10)||
', ''http://www.supp-102057.com/cat/hw/p3088.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2276'||chr(10)||
', ''SDRAM - 48 MB'''||chr(10)||
', ''Memory SIMM: RAM - 48 MB. SDRAM can operate in burst mode. In burst'||chr(10)||
'mode, when a single data address is accessed, an entire block of data is'||chr(10)||
'retrieved rather than ';

s:=s||'just the one piece. The assumption is that the next'||chr(10)||
'piece of data that will be requested will be sequential to the previous.'||chr(10)||
'Since this is usually the case, data is held readily available.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102058'||chr(10)||
', ''orderable'''||chr(10)||
', 269'||chr(10)||
', 215'||chr(10)||
', ''http://www.supp-102058.com/cat/hw/p2276.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3086'||chr(10)||
', ''VRAM - 16 MB'''||chr(10)||
', ''Citrus Video RAM modu';

s:=s||'le - 16 MB capacity. VRAM is used by the video system'||chr(10)||
'in a computer to store video information and is reserved exclusively for'||chr(10)||
'video operations. It was developed to provide continuous streams of serial'||chr(10)||
'data for refreshing video screens.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102056'||chr(10)||
', ''orderable'''||chr(10)||
', 211'||chr(10)||
', 186'||chr(10)||
', ''http://www.supp-102056.com/cat/hw/p3086.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES';

s:=s||' (3091'||chr(10)||
', ''VRAM - 64 MB'''||chr(10)||
', ''Citrus Video RAM memory module - 64 MB capacity. Physically, VRAM looks'||chr(10)||
'just like DRAM with added hardware called a shift register. The special'||chr(10)||
'feature of VRAM is that it can transfer one entire row of data (up to 256'||chr(10)||
'bits) into this shift register in a single clock cycle. This ability'||chr(10)||
'significantly reduces retrieval time, since the number of fetches is reduced'||chr(10)||
'from a po';

s:=s||'ssible 256 to a single fetch. The main benefit of having a shift'||chr(10)||
'register available for data dumps is that it frees the CPU to refresh the'||chr(10)||
'screen rather than retrieve data, thereby doubling the data bandwidth. For'||chr(10)||
'this reason, VRAM is often referred to as being dual-ported. However, the'||chr(10)||
'shift register will only be used when the VRAM chip is given special'||chr(10)||
'instructions to do so. The command to use t';

s:=s||'he shift register is built into'||chr(10)||
'the graphics controller.'''||chr(10)||
', 14,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102098'||chr(10)||
', ''orderable'''||chr(10)||
', 279'||chr(10)||
', 243'||chr(10)||
', ''http://www.supp-102098.com/cat/hw/p3091.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1787'||chr(10)||
', ''CPU D300'''||chr(10)||
', ''Dual CPU @ 300Mhz. For light personal processing only, or file servers'||chr(10)||
'with less than 5 concurrent users. This product will probably become'||chr(10)||
'obsolete soon.'''||chr(10)||
',';

s:=s||' 15,1'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102097'||chr(10)||
', ''orderable'''||chr(10)||
', 101'||chr(10)||
', 90'||chr(10)||
', ''http://www.supp-102097.com/cat/hw/p1787.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2439'||chr(10)||
', ''CPU D400'''||chr(10)||
', ''Dual CPU @ 400Mhz. Good price/performance ratio; for mid-size LAN'||chr(10)||
'file servers (up to 100 concurrent users).'''||chr(10)||
', 15,1'||chr(10)||
', to_yminterval(''+03-00'')'||chr(10)||
', 102092'||chr(10)||
', ''orderable'''||chr(10)||
', 123'||chr(10)||
', 105'||chr(10)||
', ''http://www.supp-102092.com/cat/hw/p2';

s:=s||'439.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1788'||chr(10)||
', ''CPU D600'''||chr(10)||
', ''Dual CPU @ 600Mhz. State of the art, high clock speed; for heavy'||chr(10)||
'load WAN servers (up to 200 concurrent users).'''||chr(10)||
', 15,1'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 102067'||chr(10)||
', ''orderable'''||chr(10)||
', 178'||chr(10)||
', 149'||chr(10)||
', ''http://www.supp-102067.com/cat/hw/p1788.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2375'||chr(10)||
', ''GP 1024x768'''||chr(10)||
', ''Graphics Processor, r';

s:=s||'esolution 1024 X 768 pixels. Outstanding'||chr(10)||
'price/performance for 2D and 3D applications under SPNIX v3.3 and'||chr(10)||
'v4.0. Double your viewing power by running two monitors from this'||chr(10)||
'single card. Two 17 inch monitors have more screen area than one'||chr(10)||
'21 inch monitor. Excellent option for users that multi-task'||chr(10)||
'frequently or access data from multiple sources often.'''||chr(10)||
', 15,1'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102063'||chr(10)||
', ''o';

s:=s||'rderable'''||chr(10)||
', 78'||chr(10)||
', 69'||chr(10)||
', ''http://www.supp-102063.com/cat/hw/p2375.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2411'||chr(10)||
', ''GP 1280x1024'''||chr(10)||
', ''Graphics Processor, resolution 1280 X 1024 pixels. High end 3D performance'||chr(10)||
'at a mid range price: 15 million Gouraud shaded triangles per second,'||chr(10)||
'Optimized 3D drivers for MCAD and DCC applications, with user-customizable'||chr(10)||
'settings. 64MB DDR SDRAM unified frame ';

wwv_flow_api.create_install_script(
  p_id => 313868810903622867 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'seed products',
  p_sequence=> 70,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'buffer supporting true color at all'||chr(10)||
'supported standard resolutions.'''||chr(10)||
', 15,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102061'||chr(10)||
', ''orderable'''||chr(10)||
', 98'||chr(10)||
', 78'||chr(10)||
', ''http://www.supp-102061.com/cat/hw/p2411.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1769'||chr(10)||
', ''GP 800x600'''||chr(10)||
', ''Graphics processor, resolution 800 x 600 pixels. Remarkable value for'||chr(10)||
'users requiring great 2D capabilities or general 3D support for advanced'||chr(10)||
'app';

s:=s||'lications. Drives incredible performance in highly complex models and'||chr(10)||
'frees the customer to focus on the design, instead of the rendering process.'''||chr(10)||
', 15,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102050'||chr(10)||
', ''orderable'''||chr(10)||
', 48'||chr(10)||
', NULL'||chr(10)||
', ''http://www.supp-102050.com/cat/hw/p1769.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2049'||chr(10)||
', ''MB - S300'''||chr(10)||
', ''PC type motherboard, 300 Series.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+01-00'')';

s:=s||''||chr(10)||
', 102082'||chr(10)||
', ''obsolete'''||chr(10)||
', 55'||chr(10)||
', 47'||chr(10)||
', ''http://www.supp-102082.com/cat/hw/p2049.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2751'||chr(10)||
', ''MB - S450'''||chr(10)||
', ''PC type motherboard, 450 Series.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102072'||chr(10)||
', ''orderable'''||chr(10)||
', 66'||chr(10)||
', 54'||chr(10)||
', ''http://www.supp-102072.com/cat/hw/p2751.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3112'||chr(10)||
', ''MB - S500'''||chr(10)||
', ''PC type motherboard, 500 Series';

s:=s||'.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102086'||chr(10)||
', ''orderable'''||chr(10)||
', 77'||chr(10)||
', 66'||chr(10)||
', ''http://www.supp-102086.com/cat/hw/p3112.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2752'||chr(10)||
', ''MB - S550'''||chr(10)||
', ''PC type motherboard for the 550 Series.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102086'||chr(10)||
', ''orderable'''||chr(10)||
', 88'||chr(10)||
', 76'||chr(10)||
', ''http://www.supp-102086.com/cat/hw/p2752.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2293'||chr(10)||
', ''MB';

s:=s||' - S600'''||chr(10)||
', ''Motherboard, 600 Series.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102086'||chr(10)||
', ''orderable'''||chr(10)||
', 99'||chr(10)||
', 87'||chr(10)||
', ''http://www.supp-102086.com/cat/hw/p2293.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3114'||chr(10)||
', ''MB - S900/650+'''||chr(10)||
', ''PC motherboard, 900 Series; standard motherboard'||chr(10)||
'for all models 650 and up.'''||chr(10)||
', 15,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102086'||chr(10)||
', ''under development'''||chr(10)||
', 101'||chr(10)||
', 88'||chr(10)||
', ''http://www.supp-10';

s:=s||'2086.com/cat/hw/p3114.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3129'||chr(10)||
', ''Sound Card STD'''||chr(10)||
', ''Sound Card - standard version, with MIDI interface,'||chr(10)||
'line in/out, low impedance microphone input.'''||chr(10)||
', 15,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102090'||chr(10)||
', ''orderable'''||chr(10)||
', 46'||chr(10)||
', 39'||chr(10)||
', ''http://www.supp-102090.com/cat/hw/p3129.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3133'||chr(10)||
', ''Video Card /32'''||chr(10)||
', ''Video Card,';

s:=s||' with 32MB cache memory.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102076'||chr(10)||
', ''orderable'''||chr(10)||
', 48'||chr(10)||
', 41'||chr(10)||
', ''http://www.supp-102076.com/cat/hw/p3133.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2308'||chr(10)||
', ''Video Card /E32'''||chr(10)||
', ''3-D ELSA Video Card, with 32 MB memory.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102087'||chr(10)||
', ''orderable'''||chr(10)||
', 58'||chr(10)||
', 48'||chr(10)||
', ''http://www.supp-102087.com/cat/hw/p2308.html'');'||chr(10)||
'INSERT INTO oehr_product_i';

s:=s||'nformation VALUES (2496'||chr(10)||
', ''WSP DA-130'''||chr(10)||
', ''Wide storage processor DA-130 for storage subunits.'''||chr(10)||
', 15,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102067'||chr(10)||
', ''planned'''||chr(10)||
', 299'||chr(10)||
', 244'||chr(10)||
', ''http://www.supp-102067.com/cat/hw/p2496.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2497'||chr(10)||
', ''WSP DA-290'''||chr(10)||
', ''Wide storage processor (model DA-290).'''||chr(10)||
', 15,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102053'||chr(10)||
', ''planned'''||chr(10)||
', 399'||chr(10)||
', 355'||chr(10)||
', ''http://www.';

s:=s||'supp-102053.com/cat/hw/p2497.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3106'||chr(10)||
', ''KB 101/EN'''||chr(10)||
', ''Standard PC/AT Enhanced Keyboard (101/102-Key).'||chr(10)||
'Input locale: English (US).'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102066'||chr(10)||
', ''orderable'''||chr(10)||
', 48'||chr(10)||
', 41'||chr(10)||
', ''http://www.supp-102066.com/cat/hw/p3106.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2289'||chr(10)||
', ''KB 101/ES'''||chr(10)||
', ''Standard PC/AT Enhanced Keyboard (1';

s:=s||'01/102-Key).'||chr(10)||
'Input locale: Spanish.'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 48'||chr(10)||
', 38'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p2289.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3110'||chr(10)||
', ''KB 101/FR'''||chr(10)||
', ''Standard PC/AT Enhanced Keyboard (101/102-Key).'||chr(10)||
'Input locale: French.'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 48'||chr(10)||
', 39'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p3110';

s:=s||'.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3108'||chr(10)||
', ''KB E/EN'''||chr(10)||
', ''Ergonomic Keyboard with two separate key areas,'||chr(10)||
'detachable numeric pad. Key layout: English (US).'''||chr(10)||
', 16,2'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 78'||chr(10)||
', 63'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p3108.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2058'||chr(10)||
', ''Mouse +WP'''||chr(10)||
', ''Combination of a mouse and a wrist pad for ';

s:=s||'more'||chr(10)||
'comfortable typing and mouse operation.'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 23'||chr(10)||
', 19'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p2058.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2761'||chr(10)||
', ''Mouse +WP/CL'''||chr(10)||
', ''Set consisting of a mouse and wrist pad,'||chr(10)||
'with corporate logo'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102099'||chr(10)||
', ''planned'''||chr(10)||
', 27'||chr(10)||
', 23'||chr(10)||
', ''http://www.supp-102099.com/cat/hw/p276';

s:=s||'1.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3117'||chr(10)||
', ''Mouse C/E'''||chr(10)||
', ''Ergonomic, cordless mouse. With track-ball'||chr(10)||
'for maximum comfort and ease of use.'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102099'||chr(10)||
', ''orderable'''||chr(10)||
', 41'||chr(10)||
', 35'||chr(10)||
', ''http://www.supp-102099.com/cat/hw/p3117.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2056'||chr(10)||
', ''Mouse Pad /CL'''||chr(10)||
', ''Standard mouse pad, with corporate logo'''||chr(10)||
', 16,1'||chr(10)||
', to_y';

s:=s||'minterval(''+01-00'')'||chr(10)||
', 102099'||chr(10)||
', ''planned'''||chr(10)||
', 8'||chr(10)||
', 6'||chr(10)||
', ''http://www.supp-102099.com/cat/hw/p2056.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2211'||chr(10)||
', ''Wrist Pad'''||chr(10)||
', ''A foam strip to support your wrists when using a keyboard'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102072'||chr(10)||
', ''orderable'''||chr(10)||
', 4'||chr(10)||
', 3'||chr(10)||
', ''http://www.supp-102072.com/cat/hw/p2211.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2944'||chr(10)||
', ''Wrist ';

s:=s||'Pad /CL'''||chr(10)||
', ''Wrist Pad with corporate logo'''||chr(10)||
', 16,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102063'||chr(10)||
', ''under development'''||chr(10)||
', 3'||chr(10)||
', 2'||chr(10)||
', ''http://www.supp-102063.com/cat/hw/p2944.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1742'||chr(10)||
', ''CD-ROM 500/16x'''||chr(10)||
', ''CD drive, read only, speed 16x, maximum capacity 500 MB.'''||chr(10)||
', 17,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102052'||chr(10)||
', ''orderable'''||chr(10)||
', 101'||chr(10)||
', 81'||chr(10)||
', ''http://www.supp-102052.com/cat/hw/';

s:=s||'p1742.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2402'||chr(10)||
', ''CD-ROM 600/E/24x'''||chr(10)||
', ''600 MB external 24x speed CD-ROM drive (read only).'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102052'||chr(10)||
', ''orderable'''||chr(10)||
', 127'||chr(10)||
', 113'||chr(10)||
', ''http://www.supp-102052.com/cat/hw/p2402.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2403'||chr(10)||
', ''CD-ROM 600/I/24x'''||chr(10)||
', ''600 MB internal read only CD-ROM drive,'||chr(10)||
'reading speed 24x'''||chr(10)||
', 17,2'||chr(10)||
'';

s:=s||', to_yminterval(''+01-00'')'||chr(10)||
', 102052'||chr(10)||
', ''orderable'''||chr(10)||
', 117'||chr(10)||
', 103'||chr(10)||
', ''http://www.supp-102052.com/cat/hw/p2403.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1761'||chr(10)||
', ''CD-ROM 600/I/32x'''||chr(10)||
', ''600 MB Internal CD-ROM Drive, speed 32x (read only).'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102052'||chr(10)||
', ''under development'''||chr(10)||
', 134'||chr(10)||
', 119'||chr(10)||
', ''http://www.supp-102052.com/cat/hw/p1761.html'');'||chr(10)||
'INSERT INTO oehr_product_informat';

s:=s||'ion VALUES (2381'||chr(10)||
', ''CD-ROM 8x'''||chr(10)||
', ''CD Writer, read only, speed 8x'''||chr(10)||
', 17,1'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 102052'||chr(10)||
', ''obsolete'''||chr(10)||
', 99'||chr(10)||
', 82'||chr(10)||
', ''http://www.supp-102052.com/cat/hw/p2381.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2424'||chr(10)||
', ''CDW 12/24'''||chr(10)||
', ''CD Writer, speed 12x write, 24x read. Warning: will become obsolete very'||chr(10)||
'soon; this speed is not high enough anymore, and better alternatives are'||chr(10)||
'avail';

s:=s||'able for a reasonable price.'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102075'||chr(10)||
', ''orderable'''||chr(10)||
', 221'||chr(10)||
', 198'||chr(10)||
', ''http://www.supp-102075.com/cat/hw/p2424.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1781'||chr(10)||
', ''CDW 20/48/E'''||chr(10)||
', ''CD Writer, read 48x, write 20x'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 233'||chr(10)||
', 206'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p1781.html'');'||chr(10)||
'INSERT INTO oehr_product_inform';

s:=s||'ation VALUES (2264'||chr(10)||
', ''CDW 20/48/I'''||chr(10)||
', ''CD-ROM drive: read 20x, write 48x (internal)'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 223'||chr(10)||
', 181'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p2264.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2260'||chr(10)||
', ''DFD 1.44/3.5'''||chr(10)||
', ''Dual Floppy Drive - 1.44 MB - 3.5'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 102062'||chr(10)||
', ''orderable'''||chr(10)||
', 67'||chr(10)||
', 54'||chr(10)||
', ''http://www.supp-102062.';

s:=s||'com/cat/hw/p2260.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2266'||chr(10)||
', ''DVD 12x'''||chr(10)||
', ''DVD-ROM drive: speed 12x'''||chr(10)||
', 17,3'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102099'||chr(10)||
', ''orderable'''||chr(10)||
', 333'||chr(10)||
', 270'||chr(10)||
', ''http://www.supp-102099.com/cat/hw/p2266.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3077'||chr(10)||
', ''DVD 8x'''||chr(10)||
', ''DVD - ROM drive, 8x speed. Will probably become'||chr(10)||
'obsolete pretty soon...'''||chr(10)||
', 17,3'||chr(10)||
', to_yminterval(''+01-';

s:=s||'00'')'||chr(10)||
', 102099'||chr(10)||
', ''orderable'''||chr(10)||
', 274'||chr(10)||
', 237'||chr(10)||
', ''http://www.supp-102099.com/cat/hw/p3077.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2259'||chr(10)||
', ''FD 1.44/3.5'''||chr(10)||
', ''Floppy Drive - 1.44 MB High Density'||chr(10)||
'capacity - 3.5 inch chassis'''||chr(10)||
', 17,1'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102086'||chr(10)||
', ''orderable'''||chr(10)||
', 39'||chr(10)||
', 32'||chr(10)||
', ''http://www.supp-102086.com/cat/hw/p2259.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2261'||chr(10)||
', ''FD 1.';

s:=s||'44/3.5/E'''||chr(10)||
', ''Floppy disk drive - 1.44 MB (high density)'||chr(10)||
'capacity - 3.5 inch (external)'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102086'||chr(10)||
', ''orderable'''||chr(10)||
', 42'||chr(10)||
', 37'||chr(10)||
', ''http://www.supp-102086.com/cat/hw/p2261.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3082'||chr(10)||
', ''Modem - 56/90/E'''||chr(10)||
', ''Modem - 56kb per second, v.90 PCI Global compliant.'||chr(10)||
'External; for power supply 110V.'''||chr(10)||
', 17,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 1';

s:=s||'02068'||chr(10)||
', ''orderable'''||chr(10)||
', 81'||chr(10)||
', 72'||chr(10)||
', ''http://www.supp-102068.com/cat/hw/p3082.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2270'||chr(10)||
', ''Modem - 56/90/I'''||chr(10)||
', ''Modem - 56kb per second, v.90 PCI Global compliant.'||chr(10)||
'Internal, for standard chassis (3.5 inch).'''||chr(10)||
', 17,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102068'||chr(10)||
', ''orderable'''||chr(10)||
', 66'||chr(10)||
', 56'||chr(10)||
', ''http://www.supp-102068.com/cat/hw/p2270.html'');'||chr(10)||
'INSERT INTO oehr_product_informat';

s:=s||'ion VALUES (2268'||chr(10)||
', ''Modem - 56/H/E'''||chr(10)||
', ''Standard Hayes compatible modem - 56kb per second, external.'||chr(10)||
'Power supply: 220V.'''||chr(10)||
', 17,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102068'||chr(10)||
', ''obsolete'''||chr(10)||
', 77'||chr(10)||
', 67'||chr(10)||
', ''http://www.supp-102068.com/cat/hw/p2268.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3083'||chr(10)||
', ''Modem - 56/H/I'''||chr(10)||
', ''Standard Hayes modem - 56kb per second, internal, for'||chr(10)||
' standard 3.5 inch chassis.'''||chr(10)||
', 17,1'||chr(10)||
',';

s:=s||' to_yminterval(''+01-00'')'||chr(10)||
', 102068'||chr(10)||
', ''orderable'''||chr(10)||
', 67'||chr(10)||
', 56'||chr(10)||
', ''http://www.supp-102068.com/cat/hw/p3083.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2374'||chr(10)||
', ''Modem - C/100'''||chr(10)||
', ''DOCSIS/EURODOCSIS 1.0/1.1-compliant external cable modem'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102064'||chr(10)||
', ''orderable'''||chr(10)||
', 65'||chr(10)||
', 54'||chr(10)||
', ''http://www.supp-102064.com/cat/hw/p2374.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (';

s:=s||'1740'||chr(10)||
', ''TD 12GB/DAT'''||chr(10)||
', ''Tape drive - 12 gigabyte capacity, DAT format.'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102075'||chr(10)||
', ''orderable'''||chr(10)||
', 134'||chr(10)||
', 111'||chr(10)||
', ''http://www.supp-102075.com/cat/hw/p1740.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2409'||chr(10)||
', ''TD 7GB/8'''||chr(10)||
', ''Tape drive, 7GB capacity, 8mm cartridge tape.'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102054'||chr(10)||
', ''orderable'''||chr(10)||
', 210'||chr(10)||
', 177'||chr(10)||
', ''http://www.supp-102054.co';

s:=s||'m/cat/hw/p2409.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2262'||chr(10)||
', ''ZIP 100'''||chr(10)||
', ''ZIP Drive, 100 MB capacity (external) plus cable for'||chr(10)||
'parallel port connection'''||chr(10)||
', 17,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102054'||chr(10)||
', ''orderable'''||chr(10)||
', 98'||chr(10)||
', 81'||chr(10)||
', ''http://www.supp-102054.com/cat/hw/p2262.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2522'||chr(10)||
', ''Battery - EL'''||chr(10)||
', ''Extended life battery, for laptop computers'''||chr(10)||
',';

s:=s||' 19,2'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 102078'||chr(10)||
', ''orderable'''||chr(10)||
', 44'||chr(10)||
', 39'||chr(10)||
', ''http://www.supp-102078.com/cat/hw/p2522.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2278'||chr(10)||
', ''Battery - NiHM'''||chr(10)||
', ''Rechargeable NiHM battery for laptop computers'''||chr(10)||
', 19,1'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 102078'||chr(10)||
', ''orderable'''||chr(10)||
', 55'||chr(10)||
', 48'||chr(10)||
', ''http://www.supp-102078.com/cat/hw/p2278.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (24';

s:=s||'18'||chr(10)||
', ''Battery Backup (DA-130)'''||chr(10)||
', ''Single-battery charger with LED indicators'''||chr(10)||
', 19,1'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 102074'||chr(10)||
', ''orderable'''||chr(10)||
', 61'||chr(10)||
', 52'||chr(10)||
', ''http://www.supp-102074.com/cat/hw/p2418.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2419'||chr(10)||
', ''Battery Backup (DA-290)'''||chr(10)||
', ''Two-battery charger with LED indicators'''||chr(10)||
', 19,1'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 102074'||chr(10)||
', ''orderable'''||chr(10)||
', 72'||chr(10)||
', 60'||chr(10)||
', ''http://www.sup';

s:=s||'p-102074.com/cat/hw/p2419.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3097'||chr(10)||
', ''Cable Connector - 32R'''||chr(10)||
', ''Cable Connector - 32 pin ribbon'''||chr(10)||
', 19,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 3'||chr(10)||
', 2'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p3097.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3099'||chr(10)||
', ''Cable Harness'''||chr(10)||
', ''Cable harness to organize and bundle computer wiring'''||chr(10)||
', 19,1'||chr(10)||
', to_ym';

s:=s||'interval(''+00-00'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 4'||chr(10)||
', 3'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p3099.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2380'||chr(10)||
', ''Cable PR/15/P'''||chr(10)||
', ''15 foot parallel printer cable'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 6'||chr(10)||
', 5'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p2380.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2408'||chr(10)||
', ''Cable PR/P/6'''||chr(10)||
', ''Standard Ce';

s:=s||'ntronics 6ft printer cable, parallel port'''||chr(10)||
', 19,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 4'||chr(10)||
', 3'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p2408.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2457'||chr(10)||
', ''Cable PR/S/6'''||chr(10)||
', ''Standard RS232 serial printer cable, 6 feet'''||chr(10)||
', 19,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 5'||chr(10)||
', 4'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p2457.html'');'||chr(10)||
'INSERT INTO ';

s:=s||'oehr_product_information VALUES (2373'||chr(10)||
', ''Cable RS232 10/AF'''||chr(10)||
', ''10 ft RS232 cable with F/F and 9F/25F adapters'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102055'||chr(10)||
', ''orderable'''||chr(10)||
', 6'||chr(10)||
', 4'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p2373.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1734'||chr(10)||
', ''Cable RS232 10/AM'''||chr(10)||
', ''10 ft RS232 cable with M/M and 9M/25M adapters'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102055'||chr(10)||
', ''ordera';

s:=s||'ble'''||chr(10)||
', 6'||chr(10)||
', 5'||chr(10)||
', ''http://www.supp-102055.com/cat/hw/p1734.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1737'||chr(10)||
', ''Cable SCSI 10/FW/ADS'''||chr(10)||
', ''10ft SCSI2 F/W Adapt to DSxx0 Cable'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-02'')'||chr(10)||
', 102095'||chr(10)||
', ''orderable'''||chr(10)||
', 8'||chr(10)||
', 6'||chr(10)||
', ''http://www.supp-102095.com/cat/hw/p1737.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1745'||chr(10)||
', ''Cable SCSI 20/WD->D'''||chr(10)||
', ''20ft SCSI2 Wide Disk Store to';

s:=s||' Disk Store Cable'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-02'')'||chr(10)||
', 102095'||chr(10)||
', ''orderable'''||chr(10)||
', 9'||chr(10)||
', 7'||chr(10)||
', ''http://www.supp-102095.com/cat/hw/p1745.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2982'||chr(10)||
', ''Drive Mount - A'''||chr(10)||
', ''Drive Mount assembly kit'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 102057'||chr(10)||
', ''orderable'''||chr(10)||
', 44'||chr(10)||
', 35'||chr(10)||
', ''http://www.supp-102057.com/cat/hw/p2982.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3277'||chr(10)||
'';

s:=s||', ''Drive Mount - A/T'''||chr(10)||
', ''Drive Mount assembly kit for tower PC'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102057'||chr(10)||
', ''orderable'''||chr(10)||
', 36'||chr(10)||
', 29'||chr(10)||
', ''http://www.supp-102057.com/cat/hw/p3277.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2976'||chr(10)||
', ''Drive Mount - D'''||chr(10)||
', ''Drive Mount for desktop PC'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102057'||chr(10)||
', ''orderable'''||chr(10)||
', 52'||chr(10)||
', 44'||chr(10)||
', ''http://www.supp-102057.com/cat/hw/p2976.html'');'||chr(10)||
'I';

s:=s||'NSERT INTO oehr_product_information VALUES (3204'||chr(10)||
', ''Envoy DS'''||chr(10)||
', ''Envoy Docking Station'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 126'||chr(10)||
', 107'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p3204.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2638'||chr(10)||
', ''Envoy DS/E'''||chr(10)||
', ''Enhanced Envoy Docking Station'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 137'||chr(10)||
', 111'||chr(10)||
', ''http://www.supp-102060';

s:=s||'.com/cat/hw/p2638.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3020'||chr(10)||
', ''Envoy IC'''||chr(10)||
', ''Envoy Internet Computer, Plug&Play'''||chr(10)||
', 19,4'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 449'||chr(10)||
', 366'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p3020.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1948'||chr(10)||
', ''Envoy IC/58'''||chr(10)||
', ''Internet computer with built-in 58K modem'''||chr(10)||
', 19,4'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102060';

s:=s||''||chr(10)||
', ''orderable'''||chr(10)||
', 498'||chr(10)||
', 428'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p1948.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3003'||chr(10)||
', ''Laptop 128/12/56/v90/110'''||chr(10)||
', ''Envoy Laptop, 128MB memory, 12GB hard disk, v90 modem,'||chr(10)||
'110V power supply.'''||chr(10)||
', 19,4'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 3219'||chr(10)||
', 2606'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p3003.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES ';

s:=s||'(2999'||chr(10)||
', ''Laptop 16/8/110'''||chr(10)||
', ''Envoy Laptop, 16MB memory, 8GB hard disk,'||chr(10)||
'110V power supply (US only).'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102060'||chr(10)||
', ''obsolete'''||chr(10)||
', 999'||chr(10)||
', 800'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p2999.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3000'||chr(10)||
', ''Laptop 32/10/56'''||chr(10)||
', ''Envoy Laptop, 32MB memory, 10GB hard disk, 56K Modem,'||chr(10)||
'universal power supply (switchable).'''||chr(10)||
', 19,4'||chr(10)||
', to_ymin';

s:=s||'terval(''+01-06'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 1749'||chr(10)||
', 1542'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p3000.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3001'||chr(10)||
', ''Laptop 48/10/56/110'''||chr(10)||
', ''Envoy Laptop, 48MB memory, 10GB hard disk, 56K modem,'||chr(10)||
'110V power supply.'''||chr(10)||
', 19,4'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102060'||chr(10)||
', ''obsolete'''||chr(10)||
', 2556'||chr(10)||
', 2073'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p3001.html'');'||chr(10)||
'INSERT INTO oehr_product';

s:=s||'_information VALUES (3004'||chr(10)||
', ''Laptop 64/10/56/220'''||chr(10)||
', ''Envoy Laptop, 64MB memory, 10GB hard disk, 56K modem,'||chr(10)||
'220V power supply.'''||chr(10)||
', 19,4'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102060'||chr(10)||
', ''orderable'''||chr(10)||
', 2768'||chr(10)||
', 2275'||chr(10)||
', ''http://www.supp-102060.com/cat/hw/p3004.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3391'||chr(10)||
', ''PS 110/220'''||chr(10)||
', ''Power Supply - switchable, 110V/220V'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 102062'||chr(10)||
', ''o';

s:=s||'rderable'''||chr(10)||
', 85'||chr(10)||
', 75'||chr(10)||
', ''http://www.supp-102062.com/cat/hw/p3391.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3124'||chr(10)||
', ''PS 110V /T'''||chr(10)||
', ''Power supply for tower PC, 110V'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102062'||chr(10)||
', ''orderable'''||chr(10)||
', 84'||chr(10)||
', 70'||chr(10)||
', ''http://www.supp-102062.com/cat/hw/p3124.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1738'||chr(10)||
', ''PS 110V /US'''||chr(10)||
', ''110 V Power Supply - US compatible'''||chr(10)||
', 19,2';

s:=s||''||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102062'||chr(10)||
', ''orderable'''||chr(10)||
', 86'||chr(10)||
', 70'||chr(10)||
', ''http://www.supp-102062.com/cat/hw/p1738.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2377'||chr(10)||
', ''PS 110V HS/US'''||chr(10)||
', ''110 V hot swappable power supply - US compatible'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102062'||chr(10)||
', ''orderable'''||chr(10)||
', 97'||chr(10)||
', 82'||chr(10)||
', ''http://www.supp-102062.com/cat/hw/p2377.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2299'||chr(10)||
',';

s:=s||' ''PS 12V /P'''||chr(10)||
', ''Power Supply - 12v portable'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102062'||chr(10)||
', ''orderable'''||chr(10)||
', 76'||chr(10)||
', 64'||chr(10)||
', ''http://www.supp-102062.com/cat/hw/p2299.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3123'||chr(10)||
', ''PS 220V /D'''||chr(10)||
', ''Standard power supply, 220V, for desktop computers.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102062'||chr(10)||
', ''orderable'''||chr(10)||
', 81'||chr(10)||
', 65'||chr(10)||
', ''http://www.supp-102062.com/cat/hw/p3123.html'');'||chr(10)||
'';

s:=s||'INSERT INTO oehr_product_information VALUES (1748'||chr(10)||
', ''PS 220V /EUR'''||chr(10)||
', ''220 Volt Power supply type - Europe'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102053'||chr(10)||
', ''orderable'''||chr(10)||
', 83'||chr(10)||
', 70'||chr(10)||
', ''http://www.supp-102053.com/cat/hw/p1748.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2387'||chr(10)||
', ''PS 220V /FR'''||chr(10)||
', ''220V Power supply type - France'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 102053'||chr(10)||
', ''orderable'''||chr(10)||
', 83'||chr(10)||
', 66'||chr(10)||
', ''http:';

s:=s||'//www.supp-102053.com/cat/hw/p2387.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2370'||chr(10)||
', ''PS 220V /HS/FR'''||chr(10)||
', ''220V hot swappable power supply, for France.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102053'||chr(10)||
', ''orderable'''||chr(10)||
', 91'||chr(10)||
', 75'||chr(10)||
', ''http://www.supp-102053.com/cat/hw/p2370.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2311'||chr(10)||
', ''PS 220V /L'''||chr(10)||
', ''Power supply for laptop computers, 220V'''||chr(10)||
', 19,2'||chr(10)||
', to_y';

s:=s||'minterval(''+00-09'')'||chr(10)||
', 102053'||chr(10)||
', ''orderable'''||chr(10)||
', 95'||chr(10)||
', 79'||chr(10)||
', ''http://www.supp-102053.com/cat/hw/p2311.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1733'||chr(10)||
', ''PS 220V /UK'''||chr(10)||
', ''220V Power supply type - United Kingdom'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102080'||chr(10)||
', ''orderable'''||chr(10)||
', 89'||chr(10)||
', 76'||chr(10)||
', ''http://www.supp-102080.com/cat/hw/p1733.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2878'||chr(10)||
', ''Router - ASR/2W''';

s:=s||''||chr(10)||
', ''Special ALS Router - Approved Supplier required item with 2-way match'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102063'||chr(10)||
', ''orderable'''||chr(10)||
', 345'||chr(10)||
', 305'||chr(10)||
', ''http://www.supp-102063.com/cat/hw/p2878.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2879'||chr(10)||
', ''Router - ASR/3W'''||chr(10)||
', ''Special ALS Router - Approved Supplier required item with 3-way match'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102063'||chr(10)||
', ''orderable'''||chr(10)||
', 456'||chr(10)||
'';

s:=s||', 384'||chr(10)||
', ''http://www.supp-102063.com/cat/hw/p2879.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2152'||chr(10)||
', ''Router - DTMF4'''||chr(10)||
', ''DTMF 4 port router'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+00-09'')'||chr(10)||
', 102063'||chr(10)||
', ''obsolete'''||chr(10)||
', 231'||chr(10)||
', 191'||chr(10)||
', ''http://www.supp-102063.com/cat/hw/p2152.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3301'||chr(10)||
', ''Screws <B.28.P>'''||chr(10)||
', ''Screws: Brass, size 28mm, Phillips head. Plastic box, conten';

s:=s||'ts 500.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102071'||chr(10)||
', ''orderable'''||chr(10)||
', 15'||chr(10)||
', 12'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p3301.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3143'||chr(10)||
', ''Screws <B.28.S>'''||chr(10)||
', ''Screws: Brass, size 28mm, straight. Plastic box, contents 500.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102071'||chr(10)||
', ''orderable'''||chr(10)||
', 16'||chr(10)||
', 13'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p3143.html'');'||chr(10)||
'INSERT INTO oehr_pro';

s:=s||'duct_information VALUES (2323'||chr(10)||
', ''Screws <B.32.P>'''||chr(10)||
', ''Screws: Brass, size 32mm, Phillips head. Plastic box, contents 400.'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102071'||chr(10)||
', ''orderable'''||chr(10)||
', 18'||chr(10)||
', 14'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p2323.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3134'||chr(10)||
', ''Screws <B.32.S>'''||chr(10)||
', ''Screws: Brass, size 32mm, straight. Plastic box, contents 400.'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''';

s:=s||'+00-00'')'||chr(10)||
', 102071'||chr(10)||
', ''orderable'''||chr(10)||
', 18'||chr(10)||
', 15'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p3134.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3139'||chr(10)||
', ''Screws <S.16.S>'''||chr(10)||
', ''Screws: Steel, size 16 mm, straight. Carton box, contents 750.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102071'||chr(10)||
', ''orderable'''||chr(10)||
', 21'||chr(10)||
', 17'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p3139.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3300'||chr(10)||
', ''';

s:=s||'Screws <S.32.P>'''||chr(10)||
', ''Screws: Steel, size 32mm, Phillips head. Plastic box, contents 400.'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102071'||chr(10)||
', ''orderable'''||chr(10)||
', 23'||chr(10)||
', 19'||chr(10)||
', ''http://www.supp-102071.com/cat/hw/p3300.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2316'||chr(10)||
', ''Screws <S.32.S>'''||chr(10)||
', ''Screws: Steel, size 32mm, straight. Plastic box, contents 500.'''||chr(10)||
', 19,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102074'||chr(10)||
', ''orderable'''||chr(10)||
',';

s:=s||' 22'||chr(10)||
', 19'||chr(10)||
', ''http://www.supp-102074.com/cat/hw/p2316.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3140'||chr(10)||
', ''Screws <Z.16.S>'''||chr(10)||
', ''Screws: Zinc, length 16mm, straight. Carton box, contents 750.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102074'||chr(10)||
', ''orderable'''||chr(10)||
', 24'||chr(10)||
', 19'||chr(10)||
', ''http://www.supp-102074.com/cat/hw/p3140.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2319'||chr(10)||
', ''Screws <Z.24.S>'''||chr(10)||
', ''Screws: Zinc,';

s:=s||' size 24mm, straight. Carton box, contents 500.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102074'||chr(10)||
', ''orderable'''||chr(10)||
', 25'||chr(10)||
', 21'||chr(10)||
', ''http://www.supp-102074.com/cat/hw/p2319.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2322'||chr(10)||
', ''Screws <Z.28.P>'''||chr(10)||
', ''Screws: Zinc, size 28 mm, Phillips head. Carton box, contents 850.'''||chr(10)||
', 19,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 102076'||chr(10)||
', ''orderable'''||chr(10)||
', 23'||chr(10)||
', 18'||chr(10)||
', ''http://www.supp-102076.c';

s:=s||'om/cat/hw/p2322.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3178'||chr(10)||
', ''Spreadsheet - SSP/V 2.0'''||chr(10)||
', ''SmartSpread Spreadsheet, Professional Edition Version 2.0, for Vision'||chr(10)||
'Release 11.1 and 11.2. Shrink wrap includes CD-ROM containing advanced'||chr(10)||
'software and online documentation, plus printed manual, tutorial, and'||chr(10)||
'license registration.'''||chr(10)||
', 21,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 45'||chr(10)||
'';

s:=s||', 37'||chr(10)||
', ''http://www.supp-103080.com/cat/sw/p3178.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3179'||chr(10)||
', ''Spreadsheet - SSS/S 2.1'''||chr(10)||
', ''SmartSpread Spreadsheet, Standard Edition Version 2.1, for SPNIX Release'||chr(10)||
'4.0. Shrink wrap includes CD-ROM containing software and online'||chr(10)||
'documentation, plus printed manual and license registration.'''||chr(10)||
', 21,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 50'||chr(10)||
', 4';

s:=s||'4'||chr(10)||
', ''http://www.supp-103080.com/cat/sw/p3179.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3182'||chr(10)||
', ''Word Processing - SWP/V 4.5'''||chr(10)||
', ''SmartWord Word Processor, Professional Edition Version 4.5, for Vision'||chr(10)||
'Release 11.x. Shrink wrap includes CD-ROM, containing advanced software,'||chr(10)||
'printed manual, and license registration.'''||chr(10)||
', 22,2'||chr(10)||
', to_yminterval(''+00-03'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 65'||chr(10)||
', 54'||chr(10)||
', ''http:/';

s:=s||'/www.supp-103093.com/cat/sw/p3182.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3183'||chr(10)||
', ''Word Processing - SWS/V 4.5'''||chr(10)||
', ''SmartWord Word Processor, Standard Edition Version 4.5, for Vision'||chr(10)||
'Release 11.x. Shrink wrap includes CD-ROM and license registration.'''||chr(10)||
', 22,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 50'||chr(10)||
', 40'||chr(10)||
', ''http://www.supp-103093.com/cat/sw/p3183.html'');'||chr(10)||
'INSERT INTO oehr_pro';

s:=s||'duct_information VALUES (3197'||chr(10)||
', ''Spreadsheet - SSS/V 2.1'''||chr(10)||
', ''SmartSpread Spreadsheet, Standard Edition Version 2.1, for Vision'||chr(10)||
'Release 11.1 and 11.2. Shrink wrap includes CD-ROM containing software'||chr(10)||
'and online documentation, plus printed manual, tutorial, and license'||chr(10)||
'registration.'''||chr(10)||
', 21,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 45'||chr(10)||
', 36'||chr(10)||
', ''http://www.supp-103080.com/cat/sw/p3197.html'');'||chr(10)||
'I';

s:=s||'NSERT INTO oehr_product_information VALUES (3255'||chr(10)||
', ''Spreadsheet - SSS/CD 2.2B'''||chr(10)||
', ''SmartSpread Spreadsheet, Standard Edition, Beta Version 2.2, for'||chr(10)||
'SPNIX Release 4.1. CD-ROM only.'''||chr(10)||
', 21,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 35'||chr(10)||
', 30'||chr(10)||
', ''http://www.supp-103080.com/cat/sw/p3255.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3256'||chr(10)||
', ''Spreadsheet - SSS/V 2.0'''||chr(10)||
', ''SmartSpread Spreadshee';

s:=s||'t, Standard Edition Version 2.0, for Vision'||chr(10)||
'Release 11.0. Shrink wrap includes CD-ROM containing software and'||chr(10)||
'online documentation, plus printed manual, tutorial, and license'||chr(10)||
'registration.'''||chr(10)||
', 21,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 40'||chr(10)||
', 34'||chr(10)||
', ''http://www.supp-103080.com/cat/sw/p3256.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3260'||chr(10)||
', ''Word Processing - SWP/S 4.4'''||chr(10)||
', ''SmartSpr';

s:=s||'ead Spreadsheet, Standard Edition Version 2.2, for SPNIX'||chr(10)||
'Release 4.x. Shrink wrap includes CD-ROM, containing software, plus'||chr(10)||
'printed manual and license registration.'''||chr(10)||
', 22,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 50'||chr(10)||
', 41'||chr(10)||
', ''http://www.supp-103093.com/cat/sw/p3260.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3262'||chr(10)||
', ''Spreadsheet - SSS/S 2.2'''||chr(10)||
', ''SmartSpread Spreadsheet, Standard E';

s:=s||'dition Version 2.2, for SPNIX'||chr(10)||
'Release 4.1. Shrink wrap includes CD-ROM containing software and'||chr(10)||
'online documentation, plus printed manual and license registration.'''||chr(10)||
', 21,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103080'||chr(10)||
', ''under development'''||chr(10)||
', 50'||chr(10)||
', 41'||chr(10)||
', ''http://www.supp-103080.com/cat/sw/p3262.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3361'||chr(10)||
', ''Spreadsheet - SSP/S 1.5'''||chr(10)||
', ''SmartSpread Spreadsheet, Stand';

s:=s||'ard Edition Version 1.5, for SPNIX'||chr(10)||
'Release 3.3. Shrink wrap includes CD-ROM containing advanced software and'||chr(10)||
'online documentation, plus printed manual, tutorial, and license registration.'''||chr(10)||
', 21,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 40'||chr(10)||
', 34'||chr(10)||
', ''http://www.supp-103080.com/cat/sw/p3361.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1799'||chr(10)||
', ''SPNIX3.3 - SL'''||chr(10)||
', ''Operating System Softwa';

s:=s||'re: SPNIX V3.3 - Base Server License. Includes'||chr(10)||
'10 general licenses for system administration, developers, or users. No'||chr(10)||
'network user licensing. '''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 1000'||chr(10)||
', 874'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1799.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1801'||chr(10)||
', ''SPNIX3.3 - AL'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - Additional system'||chr(10)||
'admini';

s:=s||'strator license, including network access.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 100'||chr(10)||
', 88'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1801.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1803'||chr(10)||
', ''SPNIX3.3 - DL'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - Additional developer license.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 60'||chr(10)||
', 51'||chr(10)||
', ''http://www.supp-103092.com/';

s:=s||'cat/sw/p1803.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1804'||chr(10)||
', ''SPNIX3.3 - UL/N'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - Additional user license with'||chr(10)||
'network access.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 65'||chr(10)||
', 56'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1804.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1805'||chr(10)||
', ''SPNIX3.3 - UL/A'''||chr(10)||
', ''Operating System Software: SPN';

s:=s||'IX V3.3 - Additional user license class A.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 50'||chr(10)||
', 42'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1805.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1806'||chr(10)||
', ''SPNIX3.3 - UL/C'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - Additional user license class C.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 50'||chr(10)||
', 42'||chr(10)||
', ''http://www.supp-103092.';

s:=s||'com/cat/sw/p1806.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1808'||chr(10)||
', ''SPNIX3.3 - UL/D'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - Additional user license class D.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 55'||chr(10)||
', 46'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1808.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1820'||chr(10)||
', ''SPNIX3.3 - NL'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - ';

s:=s||'Additional network access license.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 55'||chr(10)||
', 45'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1820.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1822'||chr(10)||
', ''SPNIX4.0 - SL'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Base Server License. Includes'||chr(10)||
'10 general licenses for system administration, developers, or users. No'||chr(10)||
'network user licensing. '''||chr(10)||
', 24,1'||chr(10)||
',';

s:=s||' to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 1500'||chr(10)||
', 1303'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1822.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2422'||chr(10)||
', ''SPNIX4.0 - SAL'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Additional system'||chr(10)||
'administrator license, including network access.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 150'||chr(10)||
', 130'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2';

s:=s||'422.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2452'||chr(10)||
', ''SPNIX4.0 - DL'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Additional developer license.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 100'||chr(10)||
', 88'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2452.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2462'||chr(10)||
', ''SPNIX4.0 - UL/N'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Additional user';

wwv_flow_api.append_to_install_script(
  p_id => 313868810903622867 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||' license with'||chr(10)||
'network access.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 80'||chr(10)||
', 71'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2462.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2464'||chr(10)||
', ''SPNIX4.0 - UL/A'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Additional user license class A.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 70'||chr(10)||
', 62'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2';

s:=s||'464.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2467'||chr(10)||
', ''SPNIX4.0 - UL/D'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Additional user license class D.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 80'||chr(10)||
', 64'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2467.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2468'||chr(10)||
', ''SPNIX4.0 - UL/C'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Additional ';

s:=s||'user license class C.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 75'||chr(10)||
', 67'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2468.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2470'||chr(10)||
', ''SPNIX4.0 - NL'''||chr(10)||
', ''Operating System Software: SPNIX V4.0 - Additional network access license.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 80'||chr(10)||
', 70'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2470.html';

s:=s||''');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2471'||chr(10)||
', ''SPNIX3.3 SU'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - Base Server License Upgrade'||chr(10)||
'to V4.0.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 500'||chr(10)||
', 439'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2471.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2492'||chr(10)||
', ''SPNIX3.3 AU'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - V4.0 upgrade; class A';

s:=s||' user.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 45'||chr(10)||
', 38'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2492.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2493'||chr(10)||
', ''SPNIX3.3 C/DU'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - V4.0 upgrade; class C or D user.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 25'||chr(10)||
', 22'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2493.html'');'||chr(10)||
'INSERT INTO o';

s:=s||'ehr_product_information VALUES (2494'||chr(10)||
', ''SPNIX3.3 NU'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - V4.0 upgrade;network access license.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 25'||chr(10)||
', 20'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2494.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2995'||chr(10)||
', ''SPNIX3.3 SAU'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - V4.0 upgrade; system administrator lice';

s:=s||'nse.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 70'||chr(10)||
', 62'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2995.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3290'||chr(10)||
', ''SPNIX3.3 DU'''||chr(10)||
', ''Operating System Software: SPNIX V3.3 - V4.0 upgrade;developer license.'''||chr(10)||
', 24,1'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 65'||chr(10)||
', 55'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p3290.html'');'||chr(10)||
'INSERT INTO oehr_p';

s:=s||'roduct_information VALUES (1778'||chr(10)||
', ''C for SPNIX3.3 - 1 Seat'''||chr(10)||
', ''C programming software for SPNIX V3.3 - single user'''||chr(10)||
', 25,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 62'||chr(10)||
', 52'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1778.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1779'||chr(10)||
', ''C for SPNIX3.3 - Doc'''||chr(10)||
', ''C programming language documentation'||chr(10)||
', SPNIX V3.3'''||chr(10)||
', 25,2'||chr(10)||
', to_yminterval(''+10-00'')'||chr(10)||
', 103';

s:=s||'092'||chr(10)||
', ''orderable'''||chr(10)||
', 128'||chr(10)||
', 112'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1779.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1780'||chr(10)||
', ''C for SPNIX3.3 - Sys'''||chr(10)||
', ''C programming software for SPNIX V3.3 - system compiler,'||chr(10)||
'libraries, linker'''||chr(10)||
', 25,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 450'||chr(10)||
', 385'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p1780.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2';

s:=s||'371'||chr(10)||
', ''C for SPNIX4.0 - Doc'''||chr(10)||
', ''C programming language documentation, SPNIX V4.0'''||chr(10)||
', 25,2'||chr(10)||
', to_yminterval(''+10-00'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 146'||chr(10)||
', 119'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2371.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2423'||chr(10)||
', ''C for SPNIX4.0 - 1 Seat'''||chr(10)||
', ''C programming software for SPNIX V4.0 - single user'''||chr(10)||
', 25,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 84'||chr(10)||
', 73';

s:=s||''||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p2423.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3501'||chr(10)||
', ''C for SPNIX4.0 - Sys'''||chr(10)||
', ''C programming software for SPNIX V4.0 - system compiler,'||chr(10)||
'libraries, linker'''||chr(10)||
', 25,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 555'||chr(10)||
', 448'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p3501.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3502'||chr(10)||
', ''C for SPNIX3.3 -Sys/U''';

s:=s||''||chr(10)||
', ''C programming software for SPNIX V3.3 - 4.0 Upgrade;system compiler,libraries, linker'''||chr(10)||
', 25,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103092'||chr(10)||
', ''orderable'''||chr(10)||
', 105'||chr(10)||
', 88'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p3502.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3503'||chr(10)||
', ''C for SPNIX3.3 - Seat/U'''||chr(10)||
', ''C programming software for SPNIX V3.3 - 4.0 Upgrade - single user'''||chr(10)||
', 25,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103092'||chr(10)||
',';

s:=s||' ''orderable'''||chr(10)||
', 22'||chr(10)||
', 18'||chr(10)||
', ''http://www.supp-103092.com/cat/sw/p3503.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1774'||chr(10)||
', ''Base ISO CP - BL'''||chr(10)||
', ''Base ISO Communication Package - Base License'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103088'||chr(10)||
', ''orderable'''||chr(10)||
', 110'||chr(10)||
', 93'||chr(10)||
', ''http://www.supp-103088.com/cat/sw/p1774.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1775'||chr(10)||
', ''Client ISO CP - S'''||chr(10)||
', ''ISO Communic';

s:=s||'ation Package add-on license for additional SPNIX V3.3 client.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103087'||chr(10)||
', ''orderable'''||chr(10)||
', 27'||chr(10)||
', 22'||chr(10)||
', ''http://www.supp-103087.com/cat/sw/p1775.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1794'||chr(10)||
', ''OSI 8-16/IL'''||chr(10)||
', ''OSI Layer 8 to 16 - Incremental License'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103096'||chr(10)||
', ''orderable'''||chr(10)||
', 128'||chr(10)||
', 112'||chr(10)||
', ''http://www.supp-103096.com/cat/sw/p179';

s:=s||'4.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1825'||chr(10)||
', ''X25 - 1 Line License'''||chr(10)||
', ''X25 network access control system, single user'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 25'||chr(10)||
', 21'||chr(10)||
', ''http://www.supp-103093.com/cat/sw/p1825.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2004'||chr(10)||
', ''IC Browser - S'''||chr(10)||
', ''IC Web Browser for SPNIX. Browser with network mail capability.'''||chr(10)||
', 29,1'||chr(10)||
', t';

s:=s||'o_yminterval(''+00-01'')'||chr(10)||
', 103086'||chr(10)||
', ''orderable'''||chr(10)||
', 90'||chr(10)||
', 80'||chr(10)||
', ''http://www.supp-103086.com/cat/sw/p2004.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2005'||chr(10)||
', ''IC Browser Doc - S'''||chr(10)||
', ''Documentation set for IC Web Browser for SPNIX. Includes Installation'||chr(10)||
'Manual, Mail Server Administration Guide, and User Quick Reference.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103086'||chr(10)||
', ''orderable'''||chr(10)||
', 115'||chr(10)||
', 100'||chr(10)||
', ''http://';

s:=s||'www.supp-103086.com/cat/sw/p2005.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2416'||chr(10)||
', ''Client ISO CP - S'''||chr(10)||
', ''ISO Communication Package add-on license for additional SPNIX V4.0 client.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103088'||chr(10)||
', ''orderable'''||chr(10)||
', 41'||chr(10)||
', 36'||chr(10)||
', ''http://www.supp-103088.com/cat/sw/p2416.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2417'||chr(10)||
', ''Client ISO CP - V'''||chr(10)||
', ''ISO Communicatio';

s:=s||'n Package add-on license for additional Vision client.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103088'||chr(10)||
', ''orderable'''||chr(10)||
', 33'||chr(10)||
', 27'||chr(10)||
', ''http://www.supp-103088.com/cat/sw/p2417.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2449'||chr(10)||
', ''OSI 1-4/IL'''||chr(10)||
', ''OSI Layer 1 to 4 - Incremental License'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103088'||chr(10)||
', ''orderable'''||chr(10)||
', 83'||chr(10)||
', 72'||chr(10)||
', ''http://www.supp-103088.com/cat/sw/p2449.html'');'||chr(10)||
'IN';

s:=s||'SERT INTO oehr_product_information VALUES (3101'||chr(10)||
', ''IC Browser - V'''||chr(10)||
', ''IC Web Browser for Vision with manual. Browser with network mail capability.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103086'||chr(10)||
', ''orderable'''||chr(10)||
', 75'||chr(10)||
', 67'||chr(10)||
', ''http://www.supp-103086.com/cat/sw/p3101.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3170'||chr(10)||
', ''Smart Suite - V/SP'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrows';

s:=s||'e) for Vision.'||chr(10)||
'Spanish language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 161'||chr(10)||
', 132'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3170.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3171'||chr(10)||
', ''Smart Suite - S3.3/EN'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for SPNIX'||chr(10)||
'Version 3.3. English language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_';

s:=s||'yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 148'||chr(10)||
', 120'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3171.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3172'||chr(10)||
', ''Graphics - DIK+'''||chr(10)||
', ''Software Kit Graphics: Draw-It Kwik-Plus. Includes extensive clip art'||chr(10)||
'files and advanced drawing tools for 3-D object manipulation, variable'||chr(10)||
'shading, and extended character fonts.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 1030';

s:=s||'94'||chr(10)||
', ''orderable'''||chr(10)||
', 42'||chr(10)||
', 34'||chr(10)||
', ''http://www.supp-103094.com/cat/sw/p3172.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3173'||chr(10)||
', ''Graphics - SA'''||chr(10)||
', ''Software Kit Graphics: SmartArt. Professional graphics package for'||chr(10)||
'SPNIX with multiple line styles, textures, built-in shapes and common symbols.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103094'||chr(10)||
', ''orderable'''||chr(10)||
', 86'||chr(10)||
', 72'||chr(10)||
', ''http://www.supp-103094.com/cat/sw/p';

s:=s||'3173.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3175'||chr(10)||
', ''Project Management - S4.0'''||chr(10)||
', ''Project Management Software, for SPNIX V4.0. Software includes command'||chr(10)||
'line and graphical interface with text, graphic, spreadsheet, and'||chr(10)||
'customizable report formats.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 37'||chr(10)||
', 32'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3175.html'');'||chr(10)||
'INSERT INTO oehr_pro';

s:=s||'duct_information VALUES (3176'||chr(10)||
', ''Smart Suite - V/EN'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'Vision. English language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 120'||chr(10)||
', 103'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3176.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3177'||chr(10)||
', ''Smart Suite - V/FR'''||chr(10)||
', ''Office Suite (SmartWrite, Smar';

s:=s||'tArt, SmartSpread, SmartBrowse) for'||chr(10)||
'Vision. French language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 120'||chr(10)||
', 102'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3177.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3245'||chr(10)||
', ''Smart Suite - S4.0/FR'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. French language software and user ma';

s:=s||'nuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 222'||chr(10)||
', 195'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3245.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3246'||chr(10)||
', ''Smart Suite - S4.0/SP'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. Spanish language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 222'||chr(10)||
', 193'||chr(10)||
', ''';

s:=s||'http://www.supp-103089.com/cat/sw/p3246.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3247'||chr(10)||
', ''Smart Suite - V/DE'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'Vision. German language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 120'||chr(10)||
', 96'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3247.html'');'||chr(10)||
'INSERT INTO oehr_product_information VAL';

s:=s||'UES (3248'||chr(10)||
', ''Smart Suite - S4.0/DE'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. German language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 222'||chr(10)||
', 193'||chr(10)||
', ''http://www.supp-103089.com/cat/sw/p3248.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3250'||chr(10)||
', ''Graphics - DIK'''||chr(10)||
', ''Software Kit Graphics: Draw-It Kwik. Simple grap';

s:=s||'hics package for'||chr(10)||
'Vision systems, with options to save in GIF, JPG, and BMP formats.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable'''||chr(10)||
', 28'||chr(10)||
', 24'||chr(10)||
', ''http://www.supp-103083.com/cat/sw/p3250.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3251'||chr(10)||
', ''Project Management - V'''||chr(10)||
', ''Project Management Software, for Vision. Software includes command'||chr(10)||
'line and graphical interface with text, graphic, sp';

s:=s||'readsheet, and'||chr(10)||
'customizable report formats.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 31'||chr(10)||
', 26'||chr(10)||
', ''http://www.supp-103093.com/cat/sw/p3251.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3252'||chr(10)||
', ''Project Management - S3.3'''||chr(10)||
', ''Project Management Software, for SPNIX V3.3. Software includes command'||chr(10)||
'line and graphical interface with text, graphic, spreadsheet, and'||chr(10)||
'customizable repor';

s:=s||'t formats.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 26'||chr(10)||
', 23'||chr(10)||
', ''http://www.supp-103093.com/cat/sw/p3252.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3253'||chr(10)||
', ''Smart Suite - S4.0/EN'''||chr(10)||
', ''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. English language software and user manuals.'''||chr(10)||
', 29,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 222'||chr(10)||
', 188'||chr(10)||
',';

s:=s||' ''http://www.supp-103089.com/cat/sw/p3253.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3257'||chr(10)||
', ''Web Browser - SB/S 2.1'''||chr(10)||
', ''Software Kit Web Browser: SmartBrowse V2.1 for SPNIX V3.3. Includes'||chr(10)||
'context sensitive help files and online documentation.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103082'||chr(10)||
', ''orderable'''||chr(10)||
', 66'||chr(10)||
', 58'||chr(10)||
', ''http://www.supp-103082.com/cat/sw/p3257.html'');'||chr(10)||
'INSERT INTO oehr_product_info';

s:=s||'rmation VALUES (3258'||chr(10)||
', ''Web Browser - SB/V 1.0'''||chr(10)||
', ''Software Kit Web Browser: SmartBrowse V2.1 for Vision. Includes'||chr(10)||
'context sensitive help files and online documentation.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103082'||chr(10)||
', ''orderable'''||chr(10)||
', 80'||chr(10)||
', 70'||chr(10)||
', ''http://www.supp-103082.com/cat/sw/p3258.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3362'||chr(10)||
', ''Web Browser - SB/S 4.0'''||chr(10)||
', ''Software Kit Web Browser: SmartB';

s:=s||'rowse V4.0 for SPNIX V4.0. Includes'||chr(10)||
'context sensitive help files and online documentation.'''||chr(10)||
', 29,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103082'||chr(10)||
', ''orderable'''||chr(10)||
', 99'||chr(10)||
', 81'||chr(10)||
', ''http://www.supp-103082.com/cat/sw/p3362.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2231'||chr(10)||
', ''Desk - S/V'''||chr(10)||
', ''Standard-sized desk; capitalizable, taxable item. Final finish is from'||chr(10)||
'veneer in stock at time of order, including oak, ash';

s:=s||', cherry, and mahogany.'''||chr(10)||
', 31,5'||chr(10)||
', to_yminterval(''+15-00'')'||chr(10)||
', 103082'||chr(10)||
', ''orderable'''||chr(10)||
', 2510'||chr(10)||
', 2114'||chr(10)||
', ''http://www.supp-103082.com/cat/off/p2231.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2335'||chr(10)||
', ''Mobile phone'''||chr(10)||
', ''Dual band mobile phone with low battery consumption. Lightweight,'||chr(10)||
'foldable, with socket for single earphone and spare battery compartment.'''||chr(10)||
', 31,1'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 103088'||chr(10)||
',';

s:=s||' ''orderable'''||chr(10)||
', 100'||chr(10)||
', 83'||chr(10)||
', ''http://www.supp-103088.com/cat/off/p2335.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2350'||chr(10)||
', ''Desk - W/48'''||chr(10)||
', ''Desk - 48 inch white laminate without return; capitalizable, taxable item.'''||chr(10)||
', 31,5'||chr(10)||
', to_yminterval(''+20-00'')'||chr(10)||
', 103082'||chr(10)||
', ''orderable'''||chr(10)||
', 2500'||chr(10)||
', 2129'||chr(10)||
', ''http://www.supp-103082.com/cat/off/p2350.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2351'||chr(10)||
', ''Desk';

s:=s||' - W/48/R'''||chr(10)||
', ''Desk - 60 inch white laminate with 48 inch return; capitalizable,'||chr(10)||
'taxable item.'''||chr(10)||
', 31,5'||chr(10)||
', to_yminterval(''+20-0'')'||chr(10)||
', 103082'||chr(10)||
', ''orderable'''||chr(10)||
', 2900'||chr(10)||
', 2386'||chr(10)||
', ''http://www.supp-103082.com/cat/off/p2351.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2779'||chr(10)||
', ''Desk - OS/O/F'''||chr(10)||
', ''Executive-style oversized oak desk with file drawers. Final finish is'||chr(10)||
'customizable when ordered, light or dark oa';

s:=s||'k stain,'||chr(10)||
'or natural hand rubbed clear.'''||chr(10)||
', 31,5'||chr(10)||
', to_yminterval(''+25-00'')'||chr(10)||
', 103082'||chr(10)||
', ''orderable'''||chr(10)||
', 3980'||chr(10)||
', 3347'||chr(10)||
', ''http://www.supp-103082.com/cat/off/p2779.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3337'||chr(10)||
', ''Mobile Web Phone'''||chr(10)||
', ''Mobile phone including monthly fee for Web access. Slimline shape'||chr(10)||
'with leather-look carrying case and belt clip.'''||chr(10)||
', 31,2'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 103088'||chr(10)||
', ''order';

s:=s||'able'''||chr(10)||
', 800'||chr(10)||
', 666'||chr(10)||
', ''http://www.supp-103088.com/cat/off/p3337.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2091'||chr(10)||
', ''Paper Tablet LW 8 1/2 x 11'''||chr(10)||
', ''Paper tablet, lined, white, size 8 1/2 x 11 inch'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 1'||chr(10)||
', 0'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p2091.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2093'||chr(10)||
', ''Pens - 10/FP'''||chr(10)||
', ''Permanent ';

s:=s||'ink pen dries quickly and is smear resistant. Provides smooth,'||chr(10)||
'skip-free writing. Fine point. Single color boxes (black, blue, red) or'||chr(10)||
'assorted box (6 black, 3 blue, and 1 red).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103090'||chr(10)||
', ''orderable'''||chr(10)||
', 8'||chr(10)||
', 7'||chr(10)||
', ''http://www.supp-103090.com/cat/off/p2093.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2144'||chr(10)||
', ''Card Organizer Cover'''||chr(10)||
', ''Replacement cover for desk ';

s:=s||'top style business card holder. Smoke'||chr(10)||
'grey (original color) or clear plastic.'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-01'')'||chr(10)||
', 103094'||chr(10)||
', ''orderable'''||chr(10)||
', 18'||chr(10)||
', 14'||chr(10)||
', ''http://www.supp-103094.com/cat/off/p2144.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2336'||chr(10)||
', ''Business Cards Box - 250'''||chr(10)||
', ''Business cards box, capacity 250. Use form BC110-2, Rev. 3/2000'||chr(10)||
'(hardcopy or online) when ordering and complete all field';

s:=s||'s marked'||chr(10)||
'with an asterisk.'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103091'||chr(10)||
', ''orderable'''||chr(10)||
', 55'||chr(10)||
', 49'||chr(10)||
', ''http://www.supp-103091.com/cat/off/p2336.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2337'||chr(10)||
', ''Business Cards - 1000/2L'''||chr(10)||
', ''Business cards box, capacity 1000, 2-sided with different language on'||chr(10)||
'each side. Use form BC111-2, Rev. 12/1999 (hardcopy or online) when'||chr(10)||
'ordering - complete all fields mar';

s:=s||'ked with an asterisk and check box for'||chr(10)||
'second language (English is always on side 1).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103091'||chr(10)||
', ''orderable'''||chr(10)||
', 300'||chr(10)||
', 246'||chr(10)||
', ''http://www.supp-103091.com/cat/off/p2337.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2339'||chr(10)||
', ''Paper - Std Printer'''||chr(10)||
', ''20 lb. 8.5x11 inch white laser printer paper (recycled),'||chr(10)||
'ten 500-sheet reams'''||chr(10)||
', 32,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103';

s:=s||'095'||chr(10)||
', ''orderable'''||chr(10)||
', 25'||chr(10)||
', 21'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p2339.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2536'||chr(10)||
', ''Business Cards - 250/2L'''||chr(10)||
', ''Business cards box, capacity 250, 2-sided with different language on'||chr(10)||
'each side. Use form BC111-2, Rev. 12/1999 (hardcopy or online) when'||chr(10)||
'ordering - complete all fields marked with an asterisk and check box for'||chr(10)||
'second language (English is a';

s:=s||'lways on side 1).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103091'||chr(10)||
', ''orderable'''||chr(10)||
', 80'||chr(10)||
', 68'||chr(10)||
', ''http://www.supp-103091.com/cat/off/p2536.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2537'||chr(10)||
', ''Business Cards Box - 1000'''||chr(10)||
', ''Business cards box, capacity 1000. Use form BC110-3, Rev. 3/2000'||chr(10)||
'(hardcopy or online) when ordering and complete all fields marked with'||chr(10)||
'an asterisk.'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00';

s:=s||''')'||chr(10)||
', 103091'||chr(10)||
', ''orderable'''||chr(10)||
', 200'||chr(10)||
', 176'||chr(10)||
', ''http://www.supp-103091.com/cat/off/p2537.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2783'||chr(10)||
', ''Clips - Paper'''||chr(10)||
', ''World brand paper clips set the standard for quality.10 boxes with 100'||chr(10)||
'clips each. #1 regular or jumbo, smooth or non-skid.'''||chr(10)||
', 32,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 10'||chr(10)||
', 8'||chr(10)||
', ''http://www.supp-103080.com/cat/off/p2783.html''';

s:=s||');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2808'||chr(10)||
', ''Paper Tablet LY 8 1/2 x 11'''||chr(10)||
', ''Paper Tablet, Lined, Yellow, size 8 1/2 x 11 inch'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103098'||chr(10)||
', ''orderable'''||chr(10)||
', 1'||chr(10)||
', 0'||chr(10)||
', ''http://www.supp-103098.com/cat/off/p2808.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2810'||chr(10)||
', ''Inkvisible Pens'''||chr(10)||
', ''Rollerball pen is equipped with a smooth precision tip. See-through'||chr(10)||
'rubbe';

s:=s||'r grip allows for a visible ink supply and comfortable writing.'||chr(10)||
'4-pack with 1 each, black, blue, red, green.'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 6'||chr(10)||
', 4'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p2810.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2870'||chr(10)||
', ''Pencil - Mech'''||chr(10)||
', ''Ergonomically designed mechanical pencil for improved writing comfort.'||chr(10)||
'Refillable erasers and leads. Av';

s:=s||'ailable in three lead sizes: .5mm (fine);.7mm (medium); and .9mm (thick).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 103097'||chr(10)||
', ''orderable'''||chr(10)||
', 5'||chr(10)||
', 4'||chr(10)||
', ''http://www.supp-103097.com/cat/off/p2870.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3051'||chr(10)||
', ''Pens - 10/MP'''||chr(10)||
', ''Permanent ink pen dries quickly and is smear resistant. Provides smooth,'||chr(10)||
'skip-free writing. Medium point. Single color boxes (black, blue, ';

s:=s||'red) or'||chr(10)||
'assorted box (6 black, 3 blue, and 1 red).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103097'||chr(10)||
', ''orderable'''||chr(10)||
', 12'||chr(10)||
', 10'||chr(10)||
', ''http://www.supp-103097.com/cat/off/p3051.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3150'||chr(10)||
', ''Card Holder - 25'''||chr(10)||
', ''Card Holder; heavy plastic business card holder with embossed corporate'||chr(10)||
'logo. Holds about 25 of your business cards, depending on card thickness.'''||chr(10)||
', 32,1'||chr(10)||
', ';

s:=s||'to_yminterval(''+00-06'')'||chr(10)||
', 103089'||chr(10)||
', ''orderable'''||chr(10)||
', 18'||chr(10)||
', 15'||chr(10)||
', ''http://www.supp-103089.com/cat/off/p3150.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3208'||chr(10)||
', ''Pencils - Wood'''||chr(10)||
', ''Box of 2 dozen wooden pencils. Specify lead type when ordering: 2H'||chr(10)||
'(double hard), H (hard), HB (hard black), B (soft black).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103097'||chr(10)||
', ''orderable'''||chr(10)||
', 2'||chr(10)||
', 1'||chr(10)||
', ''http://www.supp-103097.com';

s:=s||'/cat/off/p3208.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3209'||chr(10)||
', ''Sharpener - Pencil'''||chr(10)||
', ''Electric Pencil Sharpener Rugged steel cutters for long life.'||chr(10)||
'PencilSaver helps prevent over-sharpening. Non-skid rubber feet.'||chr(10)||
'Built-in pencil holder.'''||chr(10)||
', 32,2'||chr(10)||
', to_yminterval(''+02-00'')'||chr(10)||
', 103096'||chr(10)||
', ''orderable'''||chr(10)||
', 13'||chr(10)||
', 11'||chr(10)||
', ''http://www.supp-103096.com/cat/off/p3209.html'');'||chr(10)||
'INSERT INTO oehr_product_inform';

s:=s||'ation VALUES (3224'||chr(10)||
', ''Card Organizer - 250'''||chr(10)||
', ''Portable holder for organizing business cards, capacity 250. Booklet'||chr(10)||
'style with slip in, transparent pockets for business cards. Optional'||chr(10)||
'alphabet tabs. Specify cover color when ordering (dark brown, beige,'||chr(10)||
'burgundy, black, and light grey).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 32'||chr(10)||
', 28'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p3224.h';

s:=s||'tml'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3225'||chr(10)||
', ''Card Organizer - 1000'''||chr(10)||
', ''Holder for organizing business cards with alphabet dividers; capacity'||chr(10)||
'1000. Desk top style with smoke grey cover and black base. Lid is'||chr(10)||
'removable for storing inside drawer.'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-02'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 47'||chr(10)||
', 39'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p3225.html'');'||chr(10)||
'INSERT INTO oehr_produ';

s:=s||'ct_information VALUES (3511'||chr(10)||
', ''Paper - HQ Printer'''||chr(10)||
', ''Quality paper for inkjet and laser printers tested to resist printer'||chr(10)||
'jams. Acid free for archival purposes. 22lb. weight with brightness of 92.'||chr(10)||
'Size: 8 1/2 x 11. Single 500-sheet ream.'''||chr(10)||
', 32,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103080'||chr(10)||
', ''orderable'''||chr(10)||
', 9'||chr(10)||
', 7'||chr(10)||
', ''http://www.supp-103080.com/cat/off/p3511.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES ';

s:=s||'(3515'||chr(10)||
', ''Lead Replacement'''||chr(10)||
', ''Refill leads for mechanical pencils. Each pack contains 25 leads and'||chr(10)||
'a replacement eraser. Available in three lead sizes: .5mm (fine); .7mm'||chr(10)||
'(medium); and .9mm (thick).'''||chr(10)||
', 32,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 2'||chr(10)||
', 1'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p3515.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2986'||chr(10)||
', ''Manual - Vision OS/2x +'''||chr(10)||
', ''Manu';

s:=s||'als for Vision Operating System V 2.x and Vision Office Suite'''||chr(10)||
', 33,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 125'||chr(10)||
', 111'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p2986.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3163'||chr(10)||
', ''Manual - Vision Net6.3/US'''||chr(10)||
', ''Vision Networking V6.3 Reference Manual. US version with advanced'||chr(10)||
'encryption.'''||chr(10)||
', 33,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable''';

s:=s||''||chr(10)||
', 35'||chr(10)||
', 29'||chr(10)||
', ''http://www.supp-103083.com/cat/off/p3163.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3165'||chr(10)||
', ''Manual - Vision Tools2.0'''||chr(10)||
', ''Vision Business Tools Suite V2.0 Reference Manual. Includes installation,'||chr(10)||
'configuration, and user guide.'''||chr(10)||
', 33,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable'''||chr(10)||
', 40'||chr(10)||
', 34'||chr(10)||
', ''http://www.supp-103083.com/cat/off/p3165.html'');'||chr(10)||
'INSERT INTO oehr_product_inform';

s:=s||'ation VALUES (3167'||chr(10)||
', ''Manual - Vision OS/2.x'''||chr(10)||
', ''Vision Operating System V2.0/2.1/2/3 Reference Manual. Complete'||chr(10)||
'installation, configuration, management, and tuning information for Vision'||chr(10)||
'system administration. Note that this manual replaces the individual'||chr(10)||
'Version 2.0 and 2.1 manuals.'''||chr(10)||
', 33,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable'''||chr(10)||
', 55'||chr(10)||
', 47'||chr(10)||
', ''http://www.supp-103083.com/cat/off/p3167.htm';

s:=s||'l'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3216'||chr(10)||
', ''Manual - Vision Net6.3'''||chr(10)||
', ''Vision Networking V6.3 Reference Manual. Non-US version with basic'||chr(10)||
'encryption.'''||chr(10)||
', 33,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable'''||chr(10)||
', 30'||chr(10)||
', 26'||chr(10)||
', ''http://www.supp-103083.com/cat/off/p3216.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3220'||chr(10)||
', ''Manual - Vision OS/1.2'''||chr(10)||
', ''Vision Operating System V1.2 Referenc';

s:=s||'e Manual. Complete installation,'||chr(10)||
'configuration, management, and tuning information for Vision system'||chr(10)||
'administration.'''||chr(10)||
', 33,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable'''||chr(10)||
', 45'||chr(10)||
', 36'||chr(10)||
', ''http://www.supp-103083.com/cat/off/p3220.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1729'||chr(10)||
', ''Chemicals - RCP'''||chr(10)||
', ''Cleaning Chemicals - 3500 roller clean pads'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 103094'||chr(10)||
', ''o';

s:=s||'rderable'''||chr(10)||
', 80'||chr(10)||
', 66'||chr(10)||
', ''http://www.supp-103094.com/cat/off/p1729.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1910'||chr(10)||
', ''FG Stock - H'''||chr(10)||
', ''Fiberglass Stock - heavy duty, 1 thick'''||chr(10)||
', 39,3'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable'''||chr(10)||
', 14'||chr(10)||
', 11'||chr(10)||
', ''http://www.supp-103083.com/cat/off/p1910.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1912'||chr(10)||
', ''SS Stock - 3mm'''||chr(10)||
', ''Stainless steel stock - 3mm.';

s:=s||' Can be predrilled for standard power'||chr(10)||
'supplies, motherboard holders, and hard drives. Please use appropriate'||chr(10)||
'template to identify model number, placement, and size of finished sheet'||chr(10)||
'when placing order for drilled sheet.'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103083'||chr(10)||
', ''orderable'''||chr(10)||
', 15'||chr(10)||
', 12'||chr(10)||
', ''http://www.supp-103083.com/cat/off/p1912.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (1940'||chr(10)||
', ''ESD Brac';

s:=s||'elet/Clip'''||chr(10)||
', ''Electro static discharge bracelet with alligator clip for easy'||chr(10)||
'connection to computer chassis or other ground.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+01-06'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 18'||chr(10)||
', 14'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p1940.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2030'||chr(10)||
', ''Latex Gloves'''||chr(10)||
', ''Latex Gloves for assemblers, chemical handlers, fitters. Heavy duty,'||chr(10)||
'safety orange, wi';

s:=s||'th textured grip on fingers and thumb. Waterproof and'||chr(10)||
'shock-proof up to 220 volts/2 amps, 110 volts/5 amps. Acid proof for up'||chr(10)||
'to 5 minutes.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+10-00'')'||chr(10)||
', 103097'||chr(10)||
', ''orderable'''||chr(10)||
', 12'||chr(10)||
', 10'||chr(10)||
', ''http://www.supp-103097.com/cat/off/p2030.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2326'||chr(10)||
', ''Plastic Stock - Y'''||chr(10)||
', ''Plastic Stock - Yellow, standard quality.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(';

s:=s||'''+00-00'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 2'||chr(10)||
', 1'||chr(10)||
', ''http://www.supp-103093.com/cat/off/p2326.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2330'||chr(10)||
', ''Plastic Stock - R'''||chr(10)||
', ''Plastic Stock - Red, standard quality.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103093'||chr(10)||
', ''orderable'''||chr(10)||
', 2'||chr(10)||
', 1'||chr(10)||
', ''http://www.supp-103093.com/cat/off/p2330.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2334'||chr(10)||
', ''Resin'''||chr(10)||
', ''General purpo';

s:=s||'se synthetic resin.'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103087'||chr(10)||
', ''orderable'''||chr(10)||
', 4'||chr(10)||
', 3'||chr(10)||
', ''http://www.supp-103087.com/cat/off/p2334.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2340'||chr(10)||
', ''Chemicals - SW'''||chr(10)||
', ''Cleaning Chemicals - 3500 staticide wipes'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 103094'||chr(10)||
', ''orderable'''||chr(10)||
', 72'||chr(10)||
', 59'||chr(10)||
', ''http://www.supp-103094.com/cat/off/p2340.html'');'||chr(10)||
'INSERT INTO oehr_product_infor';

s:=s||'mation VALUES (2365'||chr(10)||
', ''Chemicals - TCS'''||chr(10)||
', ''Cleaning Chemical - 2500 transport cleaning sheets'''||chr(10)||
', 39,3'||chr(10)||
', to_yminterval(''+05-00'')'||chr(10)||
', 103094'||chr(10)||
', ''orderable'''||chr(10)||
', 78'||chr(10)||
', 69'||chr(10)||
', ''http://www.supp-103094.com/cat/off/p2365.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2594'||chr(10)||
', ''FG Stock - L'''||chr(10)||
', ''Fiberglass Stock - light weight for internal heat shielding, 1/4 thick'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103098'||chr(10)||
', ''';

s:=s||'orderable'''||chr(10)||
', 9'||chr(10)||
', 7'||chr(10)||
', ''http://www.supp-103098.com/cat/off/p2594.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2596'||chr(10)||
', ''SS Stock - 1mm'''||chr(10)||
', ''Stainless steel stock - 3mm. Can be predrilled for standard model'||chr(10)||
'motherboard and battery holders. Please use appropriate template to'||chr(10)||
'identify model number, placement, and size of finished sheet when placing'||chr(10)||
'order for drilled sheet.'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(';

s:=s||'''+00-00'')'||chr(10)||
', 103098'||chr(10)||
', ''orderable'''||chr(10)||
', 12'||chr(10)||
', 10'||chr(10)||
', ''http://www.supp-103098.com/cat/off/p2596.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2631'||chr(10)||
', ''ESD Bracelet/QR'''||chr(10)||
', ''Electro Static Discharge Bracelet: 2 piece lead with quick release'||chr(10)||
'connector. One piece stays permanently attached to computer chassis with'||chr(10)||
'screw, the other is attached to the bracelet. Additional permanent'||chr(10)||
'ends available.'''||chr(10)||
', 39,1'||chr(10)||
',';

s:=s||' to_yminterval(''+01-06'')'||chr(10)||
', 103085'||chr(10)||
', ''orderable'''||chr(10)||
', 15'||chr(10)||
', 12'||chr(10)||
', ''http://www.supp-103085.com/cat/off/p2631.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2721'||chr(10)||
', ''PC Bag - L/S'''||chr(10)||
', ''Black Leather Computer Case - single laptop capacity with pockets for'||chr(10)||
'manuals, additional hardware, and work papers. Adjustable protective straps'||chr(10)||
'and removable pocket for power supply and cables.'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(';

s:=s||'''+01-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 87'||chr(10)||
', 70'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p2721.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2722'||chr(10)||
', ''PC Bag - L/D'''||chr(10)||
', ''Black Leather Computer Case - double laptop capacity with pockets for'||chr(10)||
'additional hardware or manuals and work papers. Adjustable protective straps'||chr(10)||
'and removable pockets for power supplies and cables. Double wide shoulder'||chr(10)||
'strap for comf';

s:=s||'ort.'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(''+01-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 112'||chr(10)||
', 99'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p2722.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2725'||chr(10)||
', ''Machine Oil'''||chr(10)||
', ''Machine Oil for Lubrication of CD-ROM drive doors and slides.'||chr(10)||
'Self-cleaning adjustable nozzle for fine to medium flow.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103098'||chr(10)||
', ''orderable'''||chr(10)||
', 4'||chr(10)||
', 3'||chr(10)||
', ''http://www.supp-103';

s:=s||'098.com/cat/off/p2725.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (2782'||chr(10)||
', ''PC Bag - C/S'''||chr(10)||
', ''Canvas Computer Case - single laptop capacity with pockets for manuals,'||chr(10)||
'additional hardware, and work papers. Adjustable protective straps and'||chr(10)||
'removable pocket for power supply and cables. Outside pocket with snap'||chr(10)||
'closure for easy access while travelling.'''||chr(10)||
', 39,2'||chr(10)||
', to_yminterval(''+00-06'')'||chr(10)||
', 103095'||chr(10)||
',';

s:=s||' ''orderable'''||chr(10)||
', 62'||chr(10)||
', 50'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p2782.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3187'||chr(10)||
', ''Plastic Stock - B/HD'''||chr(10)||
', ''Plastic Stock - Blue, high density.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 3'||chr(10)||
', 2'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p3187.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3189'||chr(10)||
', ''Plastic Stock - G'''||chr(10)||
', ''Plastic Stock - Gre';

wwv_flow_api.append_to_install_script(
  p_id => 313868810903622867 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'en, standard density.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 2'||chr(10)||
', 1'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p3189.html'');'||chr(10)||
'INSERT INTO oehr_product_information VALUES (3191'||chr(10)||
', ''Plastic Stock - O'''||chr(10)||
', ''Plastic Stock - Orange, standard density.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 2'||chr(10)||
', 1'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p3191.html'');'||chr(10)||
'INSERT INTO oehr_product_in';

s:=s||'formation VALUES (3193'||chr(10)||
', ''Plastic Stock - W/HD'''||chr(10)||
', ''Plastic Stock - White, high density.'''||chr(10)||
', 39,1'||chr(10)||
', to_yminterval(''+00-00'')'||chr(10)||
', 103095'||chr(10)||
', ''orderable'''||chr(10)||
', 3'||chr(10)||
', 2'||chr(10)||
', ''http://www.supp-103095.com/cat/off/p3193.html'');'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1726'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''LCD Monitor 11/PM'''||chr(10)||
'), UNISTR('||chr(10)||
'''Liquid Cristal Display 11 inch passive monitor. The virtually-flat,'||chr(10)||
'high-resolution screen del';

s:=s||'ivers outstanding image quality with reduced glare.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2359'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''LCD Monitor 9/PM'''||chr(10)||
'), UNISTR('||chr(10)||
'''Liquid Cristal Display 9 inch passive monitor. Enjoy the productivity that'||chr(10)||
'a small monitor can bring via more workspace on your desk. Easy setup with'||chr(10)||
'plug-and-play compatibility.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3060'||chr(10)||
', ''US'''||chr(10)||
', ';

s:=s||'UNISTR('||chr(10)||
'''Monitor 17/HR'''||chr(10)||
'), UNISTR('||chr(10)||
'''CRT Monitor 17 inch (16 viewable) high resolution. Exceptional image'||chr(10)||
'performance and the benefit of additional screen space. This monitor offers'||chr(10)||
'sharp, color-rich monitor performance at an incredible value. With a host of'||chr(10)||
'leading features, including on-screen display controls.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2243'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 17/H';

s:=s||'R/F'''||chr(10)||
'), UNISTR('||chr(10)||
'''Monitor 17 inch (16 viewable) high resolution, flat screen. High density'||chr(10)||
'photon gun with Enhanced Elliptical Correction System for more consistent,'||chr(10)||
'accurate focus across the screen, even in the corners.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3057'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 17/SD'''||chr(10)||
'), UNISTR('||chr(10)||
'''CRT Monitor 17 inch (16 viewable) short depth. Delivers outstanding'||chr(10)||
'image clari';

s:=s||'ty and precision. Gives professional color, technical'||chr(10)||
'engineering, and visualization/animation users the color fidelity they'||chr(10)||
'demand, plus a large desktop for enhanced productivity.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3061'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 19/SD'''||chr(10)||
'), UNISTR('||chr(10)||
'''CRT Monitor 19 inch (18 viewable) short depth. High-contrast black'||chr(10)||
'screen coating: produces superior contrast and gray';

s:=s||'scale performance.'||chr(10)||
'The newly designed, amplified professional speakers with dynamic bass'||chr(10)||
'response bring all of your multimedia audio experiences to life with'||chr(10)||
'crisp, true-to-life sound and rich, deep bass tones. Plus, color-coded'||chr(10)||
'cables, simple plug-and-play setup and digital on-screen controls mean you'||chr(10)||
'are ready to set your sights on outrageous multimedia and the incredible'||chr(10)||
'Internet in just minute';

s:=s||'s.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2245'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 19/SD/M'''||chr(10)||
'), UNISTR('||chr(10)||
'''Monitor 19 (18 Viewable) short depth, Monochrome. Outstanding image'||chr(10)||
'performance in a compact design. A simple, on-screen dislay menu helps you'||chr(10)||
'easily adjust screen dimensions, colors and image attributes. Just plug'||chr(10)||
'your monitor into your PC and you are ready to go.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_produc';

s:=s||'t_descriptions VALUES (3065'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 21/D'''||chr(10)||
'), UNISTR('||chr(10)||
'''CRT Monitor 21 inch (20 viewable). Digital OptiScan technology: supports'||chr(10)||
'resolutions up to 1600 x 1200 at 75Hz. Dimensions (HxWxD): 8.3 x 18.5 x 15'||chr(10)||
'inch. The detachable or attachable monitor-powered Platinum Series speakers'||chr(10)||
'offer crisp sound and the convenience of a digital audio player jack. Just'||chr(10)||
'plug in your digital audio pl';

s:=s||'ayer and listen to tunes without powering up'||chr(10)||
'your PC.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3331'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 21/HR'''||chr(10)||
'), UNISTR('||chr(10)||
'''21 inch monitor (20 inch viewable) high resolution. This monitor is ideal'||chr(10)||
'for business, desktop publishing, and graphics-intensive applications. Enjoy'||chr(10)||
'the productivity that a large monitor can bring via more workspace for'||chr(10)||
'running applications.'''||chr(10)||
'';

s:=s||'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2252'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 21/HR/M'''||chr(10)||
'), UNISTR('||chr(10)||
'''Monitor 21 inch (20 viewable) high resolution, monochrome. Unit size:'||chr(10)||
'35.6 x 29.6 x 33.3 cm (14.6 kg) Package: 40.53 x 31.24 x 35.39 cm'||chr(10)||
'(16.5 kg). Horizontal frequency 31.5 - 54 kHz, Vertical frequency 50 - 120'||chr(10)||
'Hz. Universal power supply 90 - 132 V, 50 - 60 Hz.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descri';

s:=s||'ptions VALUES (3064'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor 21/SD'''||chr(10)||
'), UNISTR('||chr(10)||
'''Monitor 21 inch (20 viewable) short depth. Features include a 0.25-0.28'||chr(10)||
'Aperture Grille Pitch, resolution support up to 1920 x 1200 at 76Hz,'||chr(10)||
'on-screen displays, and a conductive anti-reflective film coating.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3155'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor Hinge - HD'''||chr(10)||
'), UNISTR('||chr(10)||
'''Monitor Hinge, heavy ';

s:=s||'duty, maximum monitor weight 30 kg'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3234'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Monitor Hinge - STD'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard Monitor Hinge, maximum monitor weight 10 kg'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3350'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plasma Monitor 10/LE/VGA'''||chr(10)||
'), UNISTR('||chr(10)||
'''10 inch low energy plasma monitor, VGA resolution'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions ';

s:=s||'VALUES (2236'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plasma Monitor 10/TFT/XGA'''||chr(10)||
'), UNISTR('||chr(10)||
'''10 inch TFT XGA flatscreen monitor for laptop computers'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3054'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plasma Monitor 10/XGA'''||chr(10)||
'), UNISTR('||chr(10)||
'''10 inch standard plasma monitor, XGA resolution. This virtually-flat,'||chr(10)||
'high-resolution screen delivers outstanding image quality with reduced glare.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO ';

s:=s||'oehr_product_descriptions VALUES (1782'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Compact 400/DQ'''||chr(10)||
'), UNISTR('||chr(10)||
'''400 characters per second high-speed draft printer. Dimensions (HxWxD):'||chr(10)||
'17.34 x 24.26 x 26.32 inch. Interface: RS-232 serial (9-pin), no expansion'||chr(10)||
'slots. Paper size: A4, US Letter.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2430'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Compact 400/LQ'''||chr(10)||
'), UNISTR('||chr(10)||
'''400 characters per second high-s';

s:=s||'peed letter-quality printer.'||chr(10)||
'Dimensions (HxWxD): 12.37 x 27.96 x 23.92 inch. Interface: RS-232 serial'||chr(10)||
'(25-pin), 3 expansion slots. Paper size: A2, A3, A4.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1792'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Industrial 600/DQ'''||chr(10)||
'), UNISTR('||chr(10)||
'''Wide carriage color capability 600 characters per second high-speed'||chr(10)||
'draft printer. Dimensions (HxWxD): 22.31 x 25.73 x 20.12 inch. Paper siz';

s:=s||'e:'||chr(10)||
'3x5 inch to 11x17 inch full bleed wide format.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1791'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Industrial 700/HD'''||chr(10)||
'), UNISTR('||chr(10)||
'''700 characters per second dot-matrix printer with harder body and dust'||chr(10)||
'protection for industrial uses. Interface: Centronics parallel, IEEE 1284'||chr(10)||
'compliant. Paper size: 3x5 inch to 11x17 inch full bleed wide format.'||chr(10)||
'Memory: 4MB. Dimensions (HxWxD';

s:=s||'): 9.3 x 16.5 x 13 inch.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2302'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Inkjet B/6'''||chr(10)||
'), UNISTR('||chr(10)||
'''Inkjet Printer, black and white, 6 pages per minute, resolution 600x300'||chr(10)||
'dpi. Interface: Centronics parallel, IEEE 1284 compliant. Dimensions'||chr(10)||
'(HxWxD): 7.3 x 17.5 x 14 inch. Paper size: A3, A4, US legal. No'||chr(10)||
'expansion slots.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2453';

s:=s||''||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Inkjet C/4'''||chr(10)||
'), UNISTR('||chr(10)||
'''Inkjet Printer, color (with two separate ink cartridges), 6 pages per'||chr(10)||
'minute black and white, 4 pages per minute color, resolution 600x300 dpi.'||chr(10)||
'Interface: Biodirectional IEEE 1284 compliant parallel interface and'||chr(10)||
'RS-232 serial (9-pin) interface 2 open EIO expansion slots. Memory:'||chr(10)||
'8MB 96KB receiver buffer.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES ';

s:=s||'(1797'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Inkjet C/8/HQ'''||chr(10)||
'), UNISTR('||chr(10)||
'''Inkjet printer, color, 8 pages per minute, high resolution (photo'||chr(10)||
'quality). Memory: 16MB. Dimensions (HxWxD): 7.3 x 17.5 x 14 inch. Paper'||chr(10)||
'size: A4, US Letter, envelopes. Interface: Centronics parallel, IEEE'||chr(10)||
'1284 compliant.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2459'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''LaserPro 1200/8/BW'''||chr(10)||
'), UNISTR('||chr(10)||
'''Professional black a';

s:=s||'nd white laserprinter, resolution 1200 dpi, 8 pages'||chr(10)||
'per second. Dimensions (HxWxD): 22.37 x 19.86 x 21.92 inch. Software:'||chr(10)||
'Enhanced driver support for SPNIX v4.0; MS-DOS Built-in printer drivers:'||chr(10)||
'ZoomSmart scaling technology, billboard, handout, mirror, watermark, print'||chr(10)||
'preview, quick sets, emulate laserprinter margins.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3127'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Laser';

s:=s||'Pro 600/6/BW'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard black and white laserprinter, resolution 600 dpi, 6 pages per'||chr(10)||
'second. Interface: Centronics parallel, IEEE 1284 compliant. Memory: 8MB'||chr(10)||
'96KB receiver buffer. MS-DOS ToolBox utilities for SPNIX AutoCAM v.17'||chr(10)||
'compatible driver.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2254'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 10GB /I'''||chr(10)||
'), UNISTR('||chr(10)||
'''10GB capacity hard disk drive (internal). T';

s:=s||'hese drives are intended for'||chr(10)||
'use in today''''s demanding, data-critical enterprise environments and are'||chr(10)||
'ideal for use in RAID applications. Universal option kits are configured'||chr(10)||
'and pre-mounted in the appropriate hot plug tray for immediate installation'||chr(10)||
'into your corporate server or storage system.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3353'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 10GB /R'''||chr(10)||
'), UNISTR('||chr(10)||
'''10GB ';

s:=s||'Removable hard disk drive for 10GB Removable HD drive. Supra7'||chr(10)||
'disk drives provide the latest technology to improve enterprise'||chr(10)||
'performance, increasing the maximum data transfer rate up to 160MB/s.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3069'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 10GB /S'''||chr(10)||
'), UNISTR('||chr(10)||
'''10GB hard disk drive for Standard Mount. Backward compatible with'||chr(10)||
'Supra5 systems, users are free to deploy';

s:=s||' and re-deploy these drives to'||chr(10)||
'quickly deliver increased storage capacity. Supra drives eliminate the'||chr(10)||
'risk of firmware incompatibility.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2253'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 10GB @5400 /SE'''||chr(10)||
'), UNISTR('||chr(10)||
'''10GB capacity hard disk drive (external) SCSI interface, 5400 RPM.'||chr(10)||
'Universal option kits are configured and pre-mounted in the appropriate'||chr(10)||
'hot plug tray for im';

s:=s||'mediate installation into your corporate server or'||chr(10)||
'storage system. Supra drives eliminate the risk of firmware incompatibility.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3354'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 12GB /I'''||chr(10)||
'), UNISTR('||chr(10)||
'''12GB capacity harddisk drive (internal). Supra drives eliminate the risk'||chr(10)||
'of firmware incompatibility. Backward compatibility: You can mix or'||chr(10)||
'match Supra2 and Supra3 devices f';

s:=s||'or optimized solutions and future growth.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3072'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 12GB /N'''||chr(10)||
'), UNISTR('||chr(10)||
'''12GB hard disk drive for Narrow Mount. Supra9 hot pluggable hard disk'||chr(10)||
'drives provide the ability to install or remove drives on-line. Our hot'||chr(10)||
'pluggable hard disk drives are required to meet our rigorous standards'||chr(10)||
'for reliability and performance.'''||chr(10)||
'));'||chr(10)||
'INSERT IN';

s:=s||'TO oehr_product_descriptions VALUES (3334'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 12GB /R'''||chr(10)||
'), UNISTR('||chr(10)||
'''12GB Removable hard disk drive. With compatibility across many enterprise'||chr(10)||
'platforms, you are free to deploy and re-deploy this drive to quickly'||chr(10)||
'deliver increased storage capacity. Supra7 Universal disk drives are the'||chr(10)||
'second generation of high performance hot plug drives sharing compatibility'||chr(10)||
'across corporate server';

s:=s||'s and external storage enclosures.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3071'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 12GB /S'''||chr(10)||
'), UNISTR('||chr(10)||
'''12GB hard disk drive for Standard Mount. Supra9 hot pluggable hard disk'||chr(10)||
'drives provide the ability to install or remove drives on-line. Our hot'||chr(10)||
'pluggable hard disk drives are required to meet our rigorous standards'||chr(10)||
'for reliability and performance.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oe';

s:=s||'hr_product_descriptions VALUES (2255'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 12GB @7200 /SE'''||chr(10)||
'), UNISTR('||chr(10)||
'''12GB capacity hard disk drive (external) SCSI, 7200 RPM. These drives'||chr(10)||
'are intended for use in today''''s demanding, data-critical enterprise'||chr(10)||
'environments and can be used in RAID applications. Universal option kits'||chr(10)||
'are configured and pre-mounted in the appropriate hot plug tray for'||chr(10)||
'immediate installation into your c';

s:=s||'orporate server or storage system.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1743'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 18.2GB @10000 /E'''||chr(10)||
'), UNISTR('||chr(10)||
'''External hard drive disk - 18.2 GB, rated up to 10,000 RPM. These'||chr(10)||
'drives are intended for use in today''''s demanding, data-critical'||chr(10)||
'enterprise environments and are ideal for use in RAID applications.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2382'||chr(10)||
', ''';

s:=s||'US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 18.2GB@10000 /I'''||chr(10)||
'), UNISTR('||chr(10)||
'''18.2 GB SCSI hard disk @ 10000 RPM (internal). Supra7 Universal'||chr(10)||
'disk drives provide an unequaled level of investment protection and'||chr(10)||
'simplification for customers by enabling drive compatibility across'||chr(10)||
'many enterprise platforms.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3399'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 18GB /SE'''||chr(10)||
'), UNISTR('||chr(10)||
'''18GB SCSI external hard dis';

s:=s||'k drive. Supra5 Universal hard disk'||chr(10)||
'drives provide the ability to hot plug between various servers, RAID'||chr(10)||
'arrays, and external storage shelves.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3073'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 6GB /I'''||chr(10)||
'), UNISTR('||chr(10)||
'''6GB capacity hard disk drive (internal). Supra drives eliminate the'||chr(10)||
'risk of firmware incompatibility.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1768'||chr(10)||
', ';

s:=s||'''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 8.2GB @5400'''||chr(10)||
'), UNISTR('||chr(10)||
'''Hard drive disk - 8.2 GB, rated up to 5,400 RPM. Supra drives'||chr(10)||
'eliminate the risk of firmware incompatibility. Standard serial'||chr(10)||
'RS-232 interface.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2410'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 8.4GB @5400'''||chr(10)||
'), UNISTR('||chr(10)||
'''8.4 GB hard disk @ 5400 RPM. Reduced cost of ownership: Drives can'||chr(10)||
'be utilized across enterprise platforms. Th';

s:=s||'is hot pluggable hard disk'||chr(10)||
'drive is required to meet your rigorous standards for reliability'||chr(10)||
'and performance.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2257'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 8GB /I'''||chr(10)||
'), UNISTR('||chr(10)||
'''8GB capacity hard disk drive (internal). Supra9 hot pluggable'||chr(10)||
'hard disk drives provide the ability to install or remove drives'||chr(10)||
'on-line. Backward compatibility: You can mix Supra2 and Supra3'||chr(10)||
'dev';

s:=s||'ices for optimized solutions and future growth.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3400'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 8GB /SE'''||chr(10)||
'), UNISTR('||chr(10)||
'''8GB capacity SCSI hard disk drive (external). Supra7 disk drives'||chr(10)||
'provide the latest technology to improve enterprise performance,'||chr(10)||
'increasing the maximum data transfer rate up to 255MB/s.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3355'||chr(10)||
', ''US'''||chr(10)||
', UN';

s:=s||'ISTR('||chr(10)||
'''HD 8GB /SI'''||chr(10)||
'), UNISTR('||chr(10)||
'''8GB SCSI hard disk drive, internal. With compatibility across many'||chr(10)||
'enterprise platforms, you are free to deploy and re-deploy this drive'||chr(10)||
'to quickly deliver increased storage capacity. '''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1772'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 9.1GB @10000'''||chr(10)||
'), UNISTR('||chr(10)||
'''Hard disk drive - 9.1 GB, rated up to 10,000 RPM. These drives'||chr(10)||
'are intended for u';

s:=s||'se in data-critical enterprise environments.'||chr(10)||
'Ease of doing business: you can easily select the drives you need'||chr(10)||
'regardless of the application in which they will be deployed.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2414'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 9.1GB @10000 /I'''||chr(10)||
'), UNISTR('||chr(10)||
'''9.1 GB SCSI hard disk @ 10000 RPM (internal). Supra7 disk'||chr(10)||
'drives are available in 10,000 RPM spindle speeds and capacitie';

s:=s||'s'||chr(10)||
'of 18GB and 9.1 GB. SCSI and RS-232 interfaces.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2415'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''HD 9.1GB @7200'''||chr(10)||
'), UNISTR('||chr(10)||
'''9.1 GB hard disk @ 7200 RPM. Universal option kits are'||chr(10)||
'configured and pre-mounted in the appropriate hot plug tray'||chr(10)||
'for immediate installation into your corporate server or storage'||chr(10)||
'system.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2395'||chr(10)||
', ''U';

s:=s||'S'''||chr(10)||
', UNISTR('||chr(10)||
'''32MB Cache /M'''||chr(10)||
'), UNISTR('||chr(10)||
'''32MB Mirrored cache memory (100-MHz Registered SDRAM)'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1755'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''32MB Cache /NM'''||chr(10)||
'), UNISTR('||chr(10)||
'''32MB Non-Mirrored cache memory'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2406'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''64MB Cache /M'''||chr(10)||
'), UNISTR('||chr(10)||
'''64MB Mirrored cache memory'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions V';

s:=s||'ALUES (2404'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''64MB Cache /NM'''||chr(10)||
'), UNISTR('||chr(10)||
'''64 MB Non-mirrored cache memory. FPM memory chips are'||chr(10)||
'implemented on 5 volt SIMMs, but are also available on'||chr(10)||
'3.3 volt DIMMs.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1770'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''8MB Cache /NM'''||chr(10)||
'), UNISTR('||chr(10)||
'''8MB Non-Mirrored Cache Memory (100-MHz Registered SDRAM)'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2412'||chr(10)||
', ''';

s:=s||'US'''||chr(10)||
', UNISTR('||chr(10)||
'''8MB EDO Memory'''||chr(10)||
'), UNISTR('||chr(10)||
'''8 MB 8x32 EDO SIM memory. Extended Data Out memory differs from FPM in a'||chr(10)||
'small, but significant design change. Unlike FPM, the data output drivers'||chr(10)||
'for EDO remain on when the memory controller removes the column address to'||chr(10)||
'begin the next cycle. Therefore, a new data cycle can begin before the'||chr(10)||
'previous cycle has completed. EDO is available on SIMMs and DIMM';

s:=s||'s, in 3.3'||chr(10)||
'and 5 volt varieties.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2378'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DIMM - 128 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''128 MB DIMM memory. The main reason for the change from SIMMs to DIMMs is'||chr(10)||
'to support the higher bus widths of 64-bit processors. DIMMs are 64- or'||chr(10)||
'72-bits wide; SIMMs are only 32- or 36-bits wide (with parity).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3087'||chr(10)||
',';

s:=s||' ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DIMM - 16 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Citrus OLX DIMM - 16 MB capacity.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2384'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DIMM - 1GB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory DIMM: RAM - 1 GB capacity.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1749'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DIMM - 256MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory DIMM: RAM 256 MB. (100-MHz Registered SDRAM)'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descripti';

s:=s||'ons VALUES (1750'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DIMM - 2GB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory DIMM: RAM, 2 GB capacity.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2394'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DIMM - 32MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''32 MB DIMM Memory upgrade'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2400'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DIMM - 512 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''512 MB DIMM memory. Improved memory upgrade granularity: Fewer DIMMs are'||chr(10)||
'required ';

s:=s||'to upgrade a system than it would require if using SIMMs in the same'||chr(10)||
'system. Increased maximum memory ceilings: Given the same number of memory'||chr(10)||
'slots, the maximum memory of a system using DIMMs is more than one using'||chr(10)||
'SIMMs. DIMMs have separate contacts on each side of the board, which provide'||chr(10)||
'two times the data rate as one SIMM.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1763'||chr(10)||
', ''US'''||chr(10)||
', UNIS';

s:=s||'TR('||chr(10)||
'''DIMM - 64MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory DIMM: RAM, 64MB (100-MHz Unregistered ECC SDRAM)'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2396'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''EDO - 32MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory EDO SIM: RAM, 32 MB (100-MHz Unregistered ECC SDRAM). Like FPM,'||chr(10)||
'EDO is available on SIMMs and DIMMs, in 3.3 and 5 volt varieties If EDO'||chr(10)||
'memory is installed in a computer that was not designed to support it,'||chr(10)||
'th';

s:=s||'e memory may not work.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2272'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''RAM - 16 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory SIMM: RAM - 16 MB capacity.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2274'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''RAM - 32 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory SIMM: RAM - 32 MB capacity.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3090'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''RAM - 48 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Random Acc';

s:=s||'ess Memory, SIMM - 48 MB capacity.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1739'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SDRAM - 128 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''SDRAM memory, 128 MB capacity. SDRAM can access data at speeds up to 100'||chr(10)||
'MHz, which is up to four times as fast as standard DRAMs. The advantages of'||chr(10)||
'SDRAM can be fully realized, however, only by computers designed to support'||chr(10)||
'SDRAM. SDRAM is available on 5 and 3.3';

s:=s||' volt DIMMs.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3359'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SDRAM - 16 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''SDRAM memory upgrade module, 16 MB. Synchronous Dynamic Random Access'||chr(10)||
'Memory was introduced after EDO. Its architecture and operation are based on'||chr(10)||
'those of the standard DRAM, but SDRAM provides a revolutionary change to main'||chr(10)||
'memory that further reduces data retrieval times. SDRAM is sy';

s:=s||'nchronized to'||chr(10)||
'the system clock that controls the CPU. This means that the system clock'||chr(10)||
'controlling the functions of the microprocessor also controls the SDRAM'||chr(10)||
'functions. This enables the memory controller to know on which clock cycle'||chr(10)||
'a data request will be ready, and therefore eliminates timing delays.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3088'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SDRAM - 32 MB'''||chr(10)||
'), UNIS';

s:=s||'TR('||chr(10)||
'''SDRAM module with ECC - 32 MB capacity. SDRAM has multiple memory banks'||chr(10)||
'that can work simultaneously. Switching between banks allows for a'||chr(10)||
'continuous data flow.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2276'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SDRAM - 48 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Memory SIMM: RAM - 48 MB. SDRAM can operate in burst mode. In burst'||chr(10)||
'mode, when a single data address is accessed, an entire block of ';

s:=s||'data is'||chr(10)||
'retrieved rather than just the one piece. The assumption is that the next'||chr(10)||
'piece of data that will be requested will be sequential to the previous.'||chr(10)||
'Since this is usually the case, data is held readily available.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3086'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''VRAM - 16 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Citrus Video RAM module - 16 MB capacity. VRAM is used by the video system'||chr(10)||
'in a c';

s:=s||'omputer to store video information and is reserved exclusively for'||chr(10)||
'video operations. It was developed to provide continuous streams of serial'||chr(10)||
'data for refreshing video screens.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3091'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''VRAM - 64 MB'''||chr(10)||
'), UNISTR('||chr(10)||
'''Citrus Video RAM memory module - 64 MB capacity. Physically, VRAM looks'||chr(10)||
'just like DRAM with added hardware called a shift r';

s:=s||'egister. The special'||chr(10)||
'feature of VRAM is that it can transfer one entire row of data (up to 256'||chr(10)||
'bits) into this shift register in a single clock cycle. This ability'||chr(10)||
'significantly reduces retrieval time, since the number of fetches is reduced'||chr(10)||
'from a possible 256 to a single fetch. The main benefit of having a shift'||chr(10)||
'register available for data dumps is that it frees the CPU to refresh the'||chr(10)||
'screen rath';

s:=s||'er than retrieve data, thereby doubling the data bandwidth. For'||chr(10)||
'this reason, VRAM is often referred to as being dual-ported. However, the'||chr(10)||
'shift register will only be used when the VRAM chip is given special'||chr(10)||
'instructions to do so. The command to use the shift register is built into'||chr(10)||
'the graphics controller.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1787'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CPU D300'''||chr(10)||
'), UNISTR';

s:=s||'('||chr(10)||
'''Dual CPU @ 300Mhz. For light personal processing only, or file servers'||chr(10)||
'with less than 5 concurrent users. This product will probably become'||chr(10)||
'obsolete soon.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2439'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CPU D400'''||chr(10)||
'), UNISTR('||chr(10)||
'''Dual CPU @ 400Mhz. Good price/performance ratio; for mid-size LAN'||chr(10)||
'file servers (up to 100 concurrent users).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descrip';

s:=s||'tions VALUES (1788'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CPU D600'''||chr(10)||
'), UNISTR('||chr(10)||
'''Dual CPU @ 600Mhz. State of the art, high clock speed; for heavy'||chr(10)||
'load WAN servers (up to 200 concurrent users).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2375'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''GP 1024x768'''||chr(10)||
'), UNISTR('||chr(10)||
'''Graphics Processor, resolution 1024 X 768 pixels. Outstanding'||chr(10)||
'price/performance for 2D and 3D applications under SPNIX v3.3 and'||chr(10)||
'v4';

s:=s||'.0. Double your viewing power by running two monitors from this'||chr(10)||
'single card. Two 17 inch monitors have more screen area than one'||chr(10)||
'21 inch monitor. Excellent option for users that multi-task'||chr(10)||
'frequently or access data from multiple sources often.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2411'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''GP 1280x1024'''||chr(10)||
'), UNISTR('||chr(10)||
'''Graphics Processor, resolution 1280 X 1024 pixels. High ';

s:=s||'end 3D performance'||chr(10)||
'at a mid range price: 15 million Gouraud shaded triangles per second,'||chr(10)||
'Optimized 3D drivers for MCAD and DCC applications, with user-customizable'||chr(10)||
'settings. 64MB DDR SDRAM unified frame buffer supporting true color at all'||chr(10)||
'supported standard resolutions.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1769'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''GP 800x600'''||chr(10)||
'), UNISTR('||chr(10)||
'''Graphics processor, resolution ';

s:=s||'800 x 600 pixels. Remarkable value for'||chr(10)||
'users requiring great 2D capabilities or general 3D support for advanced'||chr(10)||
'applications. Drives incredible performance in highly complex models and'||chr(10)||
'frees the customer to focus on the design, instead of the rendering process.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2049'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''MB - S300'''||chr(10)||
'), UNISTR('||chr(10)||
'''PC type motherboard, 300 Series.'''||chr(10)||
'));'||chr(10)||
'INS';

s:=s||'ERT INTO oehr_product_descriptions VALUES (2751'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''MB - S450'''||chr(10)||
'), UNISTR('||chr(10)||
'''PC type motherboard, 450 Series.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3112'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''MB - S500'''||chr(10)||
'), UNISTR('||chr(10)||
'''PC type motherboard, 500 Series.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2752'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''MB - S550'''||chr(10)||
'), UNISTR('||chr(10)||
'''PC type motherboard for the 550 Series.'''||chr(10)||
'));'||chr(10)||
'INSERT';

s:=s||' INTO oehr_product_descriptions VALUES (2293'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''MB - S600'''||chr(10)||
'), UNISTR('||chr(10)||
'''Motherboard, 600 Series.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3114'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''MB - S900/650+'''||chr(10)||
'), UNISTR('||chr(10)||
'''PC motherboard, 900 Series; standard motherboard'||chr(10)||
'for all models 650 and up.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3129'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Sound Card STD'''||chr(10)||
'), UNISTR('||chr(10)||
'''Sound Car';

s:=s||'d - standard version, with MIDI interface,'||chr(10)||
'line in/out, low impedance microphone input.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3133'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Video Card /32'''||chr(10)||
'), UNISTR('||chr(10)||
'''Video Card, with 32MB cache memory.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2308'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Video Card /E32'''||chr(10)||
'), UNISTR('||chr(10)||
'''3-D ELSA Video Card, with 32 MB memory.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_d';

s:=s||'escriptions VALUES (2496'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''WSP DA-130'''||chr(10)||
'), UNISTR('||chr(10)||
'''Wide storage processor DA-130 for storage subunits.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2497'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''WSP DA-290'''||chr(10)||
'), UNISTR('||chr(10)||
'''Wide storage processor (model DA-290).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3106'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''KB 101/EN'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard PC/AT Enhanced Keyboard (101/102-Key).';

s:=s||''||chr(10)||
'Input locale: English (US).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2289'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''KB 101/ES'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard PC/AT Enhanced Keyboard (101/102-Key).'||chr(10)||
'Input locale: Spanish.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3110'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''KB 101/FR'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard PC/AT Enhanced Keyboard (101/102-Key).'||chr(10)||
'Input locale: French.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descri';

s:=s||'ptions VALUES (3108'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''KB E/EN'''||chr(10)||
'), UNISTR('||chr(10)||
'''Ergonomic Keyboard with two separate key areas,'||chr(10)||
'detachable numeric pad. Key layout: English (US).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2058'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Mouse +WP'''||chr(10)||
'), UNISTR('||chr(10)||
'''Combination of a mouse and a wrist pad for more'||chr(10)||
'comfortable typing and mouse operation.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2761'||chr(10)||
', ';

s:=s||'''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Mouse +WP/CL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Set consisting of a mouse and wrist pad,'||chr(10)||
'with corporate logo'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3117'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Mouse C/E'''||chr(10)||
'), UNISTR('||chr(10)||
'''Ergonomic, cordless mouse. With track-ball'||chr(10)||
'for maximum comfort and ease of use.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2056'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Mouse Pad /CL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard mouse pad,';

s:=s||' with corporate logo'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2211'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Wrist Pad'''||chr(10)||
'), UNISTR('||chr(10)||
'''A foam strip to support your wrists when using a keyboard'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2944'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Wrist Pad /CL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Wrist Pad with corporate logo'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1742'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CD-ROM 500/16x'''||chr(10)||
'), ';

s:=s||'UNISTR('||chr(10)||
'''CD drive, read only, speed 16x, maximum capacity 500 MB.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2402'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CD-ROM 600/E/24x'''||chr(10)||
'), UNISTR('||chr(10)||
'''600 MB external 24x speed CD-ROM drive (read only).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2403'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CD-ROM 600/I/24x'''||chr(10)||
'), UNISTR('||chr(10)||
'''600 MB internal read only CD-ROM drive,'||chr(10)||
'reading speed 24x'''||chr(10)||
'));'||chr(10)||
'INSERT INTO';

s:=s||' oehr_product_descriptions VALUES (1761'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CD-ROM 600/I/32x'''||chr(10)||
'), UNISTR('||chr(10)||
'''600 MB Internal CD-ROM Drive, speed 32x (read only).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2381'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CD-ROM 8x'''||chr(10)||
'), UNISTR('||chr(10)||
'''CD Writer, read only, speed 8x'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2424'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CDW 12/24'''||chr(10)||
'), UNISTR('||chr(10)||
'''CD Writer, speed 12x write, 24x re';

s:=s||'ad. Warning: will become obsolete very'||chr(10)||
'soon; this speed is not high enough anymore, and better alternatives are'||chr(10)||
'available for a reasonable price.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1781'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CDW 20/48/E'''||chr(10)||
'), UNISTR('||chr(10)||
'''CD Writer, read 48x, write 20x'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2264'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''CDW 20/48/I'''||chr(10)||
'), UNISTR('||chr(10)||
'''CD-ROM drive: read 20x, w';

s:=s||'rite 48x (internal)'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2260'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DFD 1.44/3.5'''||chr(10)||
'), UNISTR('||chr(10)||
'''Dual Floppy Drive - 1.44 MB - 3.5'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2266'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DVD 12x'''||chr(10)||
'), UNISTR('||chr(10)||
'''DVD-ROM drive: speed 12x'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3077'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''DVD 8x'''||chr(10)||
'), UNISTR('||chr(10)||
'''DVD - ROM drive, 8x speed. Will ';

s:=s||'probably become'||chr(10)||
'obsolete pretty soon...'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2259'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''FD 1.44/3.5'''||chr(10)||
'), UNISTR('||chr(10)||
'''Floppy Drive - 1.44 MB High Density'||chr(10)||
'capacity - 3.5 inch chassis'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2261'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''FD 1.44/3.5/E'''||chr(10)||
'), UNISTR('||chr(10)||
'''Floppy disk drive - 1.44 MB (high density)'||chr(10)||
'capacity - 3.5 inch (external)'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_';

s:=s||'product_descriptions VALUES (3082'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Modem - 56/90/E'''||chr(10)||
'), UNISTR('||chr(10)||
'''Modem - 56kb per second, v.90 PCI Global compliant.'||chr(10)||
'External; for power supply 110V.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2270'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Modem - 56/90/I'''||chr(10)||
'), UNISTR('||chr(10)||
'''Modem - 56kb per second, v.90 PCI Global compliant.'||chr(10)||
'Internal, for standard chassis (3.5 inch).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descri';

wwv_flow_api.append_to_install_script(
  p_id => 313868810903622867 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'ptions VALUES (2268'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Modem - 56/H/E'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard Hayes compatible modem - 56kb per second, external.'||chr(10)||
'Power supply: 220V.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3083'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Modem - 56/H/I'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard Hayes modem - 56kb per second, internal, for'||chr(10)||
' standard 3.5 inch chassis.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2374'||chr(10)||
', ''US'''||chr(10)||
', UNIS';

s:=s||'TR('||chr(10)||
'''Modem - C/100'''||chr(10)||
'), UNISTR('||chr(10)||
'''DOCSIS/EURODOCSIS 1.0/1.1-compliant external cable modem'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1740'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''TD 12GB/DAT'''||chr(10)||
'), UNISTR('||chr(10)||
'''Tape drive - 12 gigabyte capacity, DAT format.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2409'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''TD 7GB/8'''||chr(10)||
'), UNISTR('||chr(10)||
'''Tape drive, 7GB capacity, 8mm cartridge tape.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_p';

s:=s||'roduct_descriptions VALUES (2262'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''ZIP 100'''||chr(10)||
'), UNISTR('||chr(10)||
'''ZIP Drive, 100 MB capacity (external) plus cable for'||chr(10)||
'parallel port connection'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2522'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Battery - EL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Extended life battery, for laptop computers'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2278'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Battery - NiHM'''||chr(10)||
'), UNISTR('||chr(10)||
'''Rech';

s:=s||'argeable NiHM battery for laptop computers'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2418'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Battery Backup (DA-130)'''||chr(10)||
'), UNISTR('||chr(10)||
'''Single-battery charger with LED indicators'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2419'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Battery Backup (DA-290)'''||chr(10)||
'), UNISTR('||chr(10)||
'''Two-battery charger with LED indicators'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3';

s:=s||'097'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable Connector - 32R'''||chr(10)||
'), UNISTR('||chr(10)||
'''Cable Connector - 32 pin ribbon'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3099'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable Harness'''||chr(10)||
'), UNISTR('||chr(10)||
'''Cable harness to organize and bundle computer wiring'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2380'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable PR/15/P'''||chr(10)||
'), UNISTR('||chr(10)||
'''15 foot parallel printer cable'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_pro';

s:=s||'duct_descriptions VALUES (2408'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable PR/P/6'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard Centronics 6ft printer cable, parallel port'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2457'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable PR/S/6'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard RS232 serial printer cable, 6 feet'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2373'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable RS232 10/AF'''||chr(10)||
'), UNISTR('||chr(10)||
'''10 ft RS232 cable with ';

s:=s||'F/F and 9F/25F adapters'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1734'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable RS232 10/AM'''||chr(10)||
'), UNISTR('||chr(10)||
'''10 ft RS232 cable with M/M and 9M/25M adapters'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1737'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable SCSI 10/FW/ADS'''||chr(10)||
'), UNISTR('||chr(10)||
'''10ft SCSI2 F/W Adapt to DSxx0 Cable'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1745'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Cable ';

s:=s||'SCSI 20/WD->D'''||chr(10)||
'), UNISTR('||chr(10)||
'''20ft SCSI2 Wide Disk Store to Disk Store Cable'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2982'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Drive Mount - A'''||chr(10)||
'), UNISTR('||chr(10)||
'''Drive Mount assembly kit'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3277'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Drive Mount - A/T'''||chr(10)||
'), UNISTR('||chr(10)||
'''Drive Mount assembly kit for tower PC'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2976';

s:=s||''||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Drive Mount - D'''||chr(10)||
'), UNISTR('||chr(10)||
'''Drive Mount for desktop PC'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3204'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Envoy DS'''||chr(10)||
'), UNISTR('||chr(10)||
'''Envoy Docking Station'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2638'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Envoy DS/E'''||chr(10)||
'), UNISTR('||chr(10)||
'''Enhanced Envoy Docking Station'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3020'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Envo';

s:=s||'y IC'''||chr(10)||
'), UNISTR('||chr(10)||
'''Envoy Internet Computer, Plug&Play'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1948'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Envoy IC/58'''||chr(10)||
'), UNISTR('||chr(10)||
'''Internet computer with built-in 58K modem'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3003'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Laptop 128/12/56/v90/110'''||chr(10)||
'), UNISTR('||chr(10)||
'''Envoy Laptop, 128MB memory, 12GB hard disk, v90 modem,'||chr(10)||
'110V power supply.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oeh';

s:=s||'r_product_descriptions VALUES (2999'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Laptop 16/8/110'''||chr(10)||
'), UNISTR('||chr(10)||
'''Envoy Laptop, 16MB memory, 8GB hard disk,'||chr(10)||
'110V power supply (US only).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3000'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Laptop 32/10/56'''||chr(10)||
'), UNISTR('||chr(10)||
'''Envoy Laptop, 32MB memory, 10GB hard disk, 56K Modem,'||chr(10)||
'universal power supply (switchable).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3';

s:=s||'001'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Laptop 48/10/56/110'''||chr(10)||
'), UNISTR('||chr(10)||
'''Envoy Laptop, 48MB memory, 10GB hard disk, 56K modem,'||chr(10)||
'110V power supply.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3004'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Laptop 64/10/56/220'''||chr(10)||
'), UNISTR('||chr(10)||
'''Envoy Laptop, 64MB memory, 10GB hard disk, 56K modem,'||chr(10)||
'220V power supply.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3391'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 110/220'''||chr(10)||
'), UNI';

s:=s||'STR('||chr(10)||
'''Power Supply - switchable, 110V/220V'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3124'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 110V /T'''||chr(10)||
'), UNISTR('||chr(10)||
'''Power supply for tower PC, 110V'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1738'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 110V /US'''||chr(10)||
'), UNISTR('||chr(10)||
'''110 V Power Supply - US compatible'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2377'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 110V HS/US'''||chr(10)||
'), U';

s:=s||'NISTR('||chr(10)||
'''110 V hot swappable power supply - US compatible'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2299'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 12V /P'''||chr(10)||
'), UNISTR('||chr(10)||
'''Power Supply - 12v portable'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3123'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 220V /D'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard power supply, 220V, for desktop computers.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1748'||chr(10)||
', ''US'''||chr(10)||
', UNI';

s:=s||'STR('||chr(10)||
'''PS 220V /EUR'''||chr(10)||
'), UNISTR('||chr(10)||
'''220 Volt Power supply type - Europe'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2387'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 220V /FR'''||chr(10)||
'), UNISTR('||chr(10)||
'''220V Power supply type - France'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2370'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 220V /HS/FR'''||chr(10)||
'), UNISTR('||chr(10)||
'''220V hot swappable power supply, for France.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (231';

s:=s||'1'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 220V /L'''||chr(10)||
'), UNISTR('||chr(10)||
'''Power supply for laptop computers, 220V'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1733'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PS 220V /UK'''||chr(10)||
'), UNISTR('||chr(10)||
'''220V Power supply type - United Kingdom'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2878'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Router - ASR/2W'''||chr(10)||
'), UNISTR('||chr(10)||
'''Special ALS Router - Approved Supplier required item with 2-way match'''||chr(10)||
'));';

s:=s||''||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2879'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Router - ASR/3W'''||chr(10)||
'), UNISTR('||chr(10)||
'''Special ALS Router - Approved Supplier required item with 3-way match'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2152'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Router - DTMF4'''||chr(10)||
'), UNISTR('||chr(10)||
'''DTMF 4 port router'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3301'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <B.28.P>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws:';

s:=s||' Brass, size 28mm, Phillips head. Plastic box, contents 500.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3143'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <B.28.S>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Brass, size 28mm, straight. Plastic box, contents 500.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2323'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <B.32.P>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Brass, size 32mm, Phillips head. Plastic box, contents 400.'''||chr(10)||
')';

s:=s||');'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3134'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <B.32.S>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Brass, size 32mm, straight. Plastic box, contents 400.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3139'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <S.16.S>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Steel, size 16 mm, straight. Carton box, contents 750.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3300'||chr(10)||
', ''US'''||chr(10)||
', UNIST';

s:=s||'R('||chr(10)||
'''Screws <S.32.P>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Steel, size 32mm, Phillips head. Plastic box, contents 400.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2316'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <S.32.S>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Steel, size 32mm, straight. Plastic box, contents 500.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3140'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <Z.16.S>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Zinc, length 16mm, str';

s:=s||'aight. Carton box, contents 750.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2319'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <Z.24.S>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Zinc, size 24mm, straight. Carton box, contents 500.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2322'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Screws <Z.28.P>'''||chr(10)||
'), UNISTR('||chr(10)||
'''Screws: Zinc, size 28 mm, Phillips head. Carton box, contents 850.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_des';

s:=s||'criptions VALUES (3178'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Spreadsheet - SSP/V 2.0'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Professional Edition Version 2.0, for Vision'||chr(10)||
'Release 11.1 and 11.2. Shrink wrap includes CD-ROM containing advanced'||chr(10)||
'software and online documentation, plus printed manual, tutorial, and'||chr(10)||
'license registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3179'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Spreadsheet - S';

s:=s||'SS/S 2.1'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Standard Edition Version 2.1, for SPNIX Release'||chr(10)||
'4.0. Shrink wrap includes CD-ROM containing software and online'||chr(10)||
'documentation, plus printed manual and license registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3182'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Word Processing - SWP/V 4.5'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartWord Word Processor, Professional Edition Version 4.5, for V';

s:=s||'ision'||chr(10)||
'Release 11.x. Shrink wrap includes CD-ROM, containing advanced software,'||chr(10)||
'printed manual, and license registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3183'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Word Processing - SWS/V 4.5'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartWord Word Processor, Standard Edition Version 4.5, for Vision'||chr(10)||
'Release 11.x. Shrink wrap includes CD-ROM and license registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product';

s:=s||'_descriptions VALUES (3197'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Spreadsheet - SSS/V 2.1'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Standard Edition Version 2.1, for Vision'||chr(10)||
'Release 11.1 and 11.2. Shrink wrap includes CD-ROM containing software'||chr(10)||
'and online documentation, plus printed manual, tutorial, and license'||chr(10)||
'registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3255'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Spreadsheet - SSS/CD 2.2';

s:=s||'B'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Standard Edition, Beta Version 2.2, for'||chr(10)||
'SPNIX Release 4.1. CD-ROM only.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3256'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Spreadsheet - SSS/V 2.0'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Standard Edition Version 2.0, for Vision'||chr(10)||
'Release 11.0. Shrink wrap includes CD-ROM containing software and'||chr(10)||
'online documentation, plus printed manual, tu';

s:=s||'torial, and license'||chr(10)||
'registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3260'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Word Processing - SWP/S 4.4'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Standard Edition Version 2.2, for SPNIX'||chr(10)||
'Release 4.x. Shrink wrap includes CD-ROM, containing software, plus'||chr(10)||
'printed manual and license registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3262'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Spr';

s:=s||'eadsheet - SSS/S 2.2'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Standard Edition Version 2.2, for SPNIX'||chr(10)||
'Release 4.1. Shrink wrap includes CD-ROM containing software and'||chr(10)||
'online documentation, plus printed manual and license registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3361'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Spreadsheet - SSP/S 1.5'''||chr(10)||
'), UNISTR('||chr(10)||
'''SmartSpread Spreadsheet, Standard Edition Version 1.5, fo';

s:=s||'r SPNIX'||chr(10)||
'Release 3.3. Shrink wrap includes CD-ROM containing advanced software and'||chr(10)||
'online documentation, plus printed manual, tutorial, and license registration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1799'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 - SL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Base Server License. Includes'||chr(10)||
'10 general licenses for system administration, developers, or users.';

s:=s||' No'||chr(10)||
'network user licensing. '''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1801'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 - AL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Additional system'||chr(10)||
'administrator license, including network access.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1803'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 - DL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Additional developer l';

s:=s||'icense.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1804'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 - UL/N'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Additional user license with'||chr(10)||
'network access.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1805'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 - UL/A'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Additional user license class A.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_produc';

s:=s||'t_descriptions VALUES (1806'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 - UL/C'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Additional user license class C.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1808'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 - UL/D'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Additional user license class D.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1820'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SP';

s:=s||'NIX3.3 - NL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Additional network access license.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1822'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - SL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4.0 - Base Server License. Includes'||chr(10)||
'10 general licenses for system administration, developers, or users. No'||chr(10)||
'network user licensing. '''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_de';

s:=s||'scriptions VALUES (2422'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - SAL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4.0 - Additional system'||chr(10)||
'administrator license, including network access.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2452'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - DL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4.0 - Additional developer license.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2';

s:=s||'462'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - UL/N'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4.0 - Additional user license with'||chr(10)||
'network access.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2464'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - UL/A'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4.0 - Additional user license class A.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2467'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - UL/';

s:=s||'D'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4.0 - Additional user license class D.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2468'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - UL/C'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4.0 - Additional user license class C.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2470'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX4.0 - NL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V4';

s:=s||'.0 - Additional network access license.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2471'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 SU'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - Base Server License Upgrade'||chr(10)||
'to V4.0.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2492'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 AU'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - V4.0 upgrade; class A user.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO ';

s:=s||'oehr_product_descriptions VALUES (2493'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 C/DU'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - V4.0 upgrade; class C or D user.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2494'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 NU'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - V4.0 upgrade;network access license.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2995'||chr(10)||
', ''US'''||chr(10)||
', UN';

s:=s||'ISTR('||chr(10)||
'''SPNIX3.3 SAU'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - V4.0 upgrade; system'||chr(10)||
'administrator license.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3290'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SPNIX3.3 DU'''||chr(10)||
'), UNISTR('||chr(10)||
'''Operating System Software: SPNIX V3.3 - V4.0 upgrade;developer license.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1778'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX3.3 - 1 Seat'''||chr(10)||
'), UNISTR('||chr(10)||
'''C';

s:=s||' programming software for SPNIX V3.3 - single user'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1779'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX3.3 - Doc'''||chr(10)||
'), UNISTR('||chr(10)||
'''C programming language documentation'||chr(10)||
', SPNIX V3.3'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1780'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX3.3 - Sys'''||chr(10)||
'), UNISTR('||chr(10)||
'''C programming software for SPNIX V3.3 - system compiler,'||chr(10)||
'libraries, linker'''||chr(10)||
'));'||chr(10)||
'INS';

s:=s||'ERT INTO oehr_product_descriptions VALUES (2371'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX4.0 - Doc'''||chr(10)||
'), UNISTR('||chr(10)||
'''C programming language documentation, SPNIX V4.0'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2423'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX4.0 - 1 Seat'''||chr(10)||
'), UNISTR('||chr(10)||
'''C programming software for SPNIX V4.0 - single user'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3501'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX4.0';

s:=s||' - Sys'''||chr(10)||
'), UNISTR('||chr(10)||
'''C programming software for SPNIX V4.0 - system compiler,'||chr(10)||
'libraries, linker'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3502'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX3.3 -Sys/U'''||chr(10)||
'), UNISTR('||chr(10)||
'''C programming software for SPNIX V3.3 - 4.0 Upgrade;system compiler, libraries, linker'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3503'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''C for SPNIX3.3 - Seat/U'''||chr(10)||
'), UNISTR(';

s:=s||''||chr(10)||
'''C programming software for SPNIX V3.3 - 4.0 Upgrade - single user'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1774'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Base ISO CP - BL'''||chr(10)||
'), UNISTR('||chr(10)||
'''Base ISO Communication Package - Base License'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1775'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Client ISO CP - S'''||chr(10)||
'), UNISTR('||chr(10)||
'''ISO Communication Package add-on license for additional SPNIX V3.3 client.'''||chr(10)||
')';

s:=s||');'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1794'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''OSI 8-16/IL'''||chr(10)||
'), UNISTR('||chr(10)||
'''OSI Layer 8 to 16 - Incremental License'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1825'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''X25 - 1 Line License'''||chr(10)||
'), UNISTR('||chr(10)||
'''X25 network access control system, single user'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2004'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''IC Browser - S'''||chr(10)||
'), UNISTR('||chr(10)||
'''IC Web';

s:=s||' Browser for SPNIX. Browser with network mail capability.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2005'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''IC Browser Doc - S'''||chr(10)||
'), UNISTR('||chr(10)||
'''Documentation set for IC Web Browser for SPNIX. Includes Installation'||chr(10)||
'Manual, Mail Server Administration Guide, and User Quick Reference.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2416'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Client ISO CP - S'''||chr(10)||
'), UN';

s:=s||'ISTR('||chr(10)||
'''ISO Communication Package add-on license for additional SPNIX V4.0 client.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2417'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Client ISO CP - V'''||chr(10)||
'), UNISTR('||chr(10)||
'''ISO Communication Package add-on license for additional Vision client.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2449'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''OSI 1-4/IL'''||chr(10)||
'), UNISTR('||chr(10)||
'''OSI Layer 1 to 4 - Incremental License'''||chr(10)||
'));'||chr(10)||
'';

s:=s||'INSERT INTO oehr_product_descriptions VALUES (3101'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''IC Browser - V'''||chr(10)||
'), UNISTR('||chr(10)||
'''IC Web Browser for Vision with manual. Browser with network mail capability.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3170'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - V/SP'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for Vision.'||chr(10)||
'Spanish language software and user manuals.'''||chr(10)||
')';

s:=s||');'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3171'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - S3.3/EN'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for SPNIX'||chr(10)||
'Version 3.3. English language software and user manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3172'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Graphics - DIK+'''||chr(10)||
'), UNISTR('||chr(10)||
'''Software Kit Graphics: Draw-It Kwik-Plus. Includes extensive ';

s:=s||'clip art'||chr(10)||
'files and advanced drawing tools for 3-D object manipulation, variable'||chr(10)||
'shading, and extended character fonts.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3173'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Graphics - SA'''||chr(10)||
'), UNISTR('||chr(10)||
'''Software Kit Graphics: SmartArt. Professional graphics package for'||chr(10)||
'SPNIX with multiple line styles, textures, built-in shapes and common symbols.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_desc';

s:=s||'riptions VALUES (3175'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Project Management - S4.0'''||chr(10)||
'), UNISTR('||chr(10)||
'''Project Management Software, for SPNIX V4.0. Software includes command'||chr(10)||
'line and graphical interface with text, graphic, spreadsheet, and'||chr(10)||
'customizable report formats.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3176'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - V/EN'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, ';

s:=s||'SmartBrowse) for'||chr(10)||
'Vision. English language software and user manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3177'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - V/FR'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'Vision. French language software and user manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3245'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - S4.0/FR'''||chr(10)||
'), UNISTR('||chr(10)||
'';

s:=s||'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. French language software and user manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3246'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - S4.0/SP'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. Spanish language software and user manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALU';

s:=s||'ES (3247'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - V/DE'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'Vision. German language software and user manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3248'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - S4.0/DE'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. German language software and user man';

s:=s||'uals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3250'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Graphics - DIK'''||chr(10)||
'), UNISTR('||chr(10)||
'''Software Kit Graphics: Draw-It Kwik. Simple graphics package for'||chr(10)||
'Vision systems, with options to save in GIF, JPG, and BMP formats.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3251'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Project Management - V'''||chr(10)||
'), UNISTR('||chr(10)||
'''Project Management Software, for Vision. Software ';

s:=s||'includes command'||chr(10)||
'line and graphical interface with text, graphic, spreadsheet, and'||chr(10)||
'customizable report formats.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3252'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Project Management - S3.3'''||chr(10)||
'), UNISTR('||chr(10)||
'''Project Management Software, for SPNIX V3.3. Software includes command'||chr(10)||
'line and graphical interface with text, graphic, spreadsheet, and'||chr(10)||
'customizable report formats.'''||chr(10)||
'));'||chr(10)||
'INSE';

s:=s||'RT INTO oehr_product_descriptions VALUES (3253'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Smart Suite - S4.0/EN'''||chr(10)||
'), UNISTR('||chr(10)||
'''Office Suite (SmartWrite, SmartArt, SmartSpread, SmartBrowse) for'||chr(10)||
'SPNIX V4.0. English language software and user manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3257'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Web Browser - SB/S 2.1'''||chr(10)||
'), UNISTR('||chr(10)||
'''Software Kit Web Browser: SmartBrowse V2.1 for SPNIX V3.3. Includes'||chr(10)||
'';

s:=s||'context sensitive help files and online documentation.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3258'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Web Browser - SB/V 1.0'''||chr(10)||
'), UNISTR('||chr(10)||
'''Software Kit Web Browser: SmartBrowse V2.1 for Vision. Includes'||chr(10)||
'context sensitive help files and online documentation.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3362'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Web Browser - SB/S 4.0'''||chr(10)||
'), UNISTR('||chr(10)||
'''Softwa';

s:=s||'re Kit Web Browser: SmartBrowse V4.0 for SPNIX V4.0. Includes'||chr(10)||
'context sensitive help files and online documentation.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2231'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Desk - S/V'''||chr(10)||
'), UNISTR('||chr(10)||
'''Standard-sized desk; capitalizable, taxable item. Final finish is from'||chr(10)||
'veneer in stock at time of order, including oak, ash, cherry, and mahogany.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descript';

s:=s||'ions VALUES (2335'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Mobile phone'''||chr(10)||
'), UNISTR('||chr(10)||
'''Dual band mobile phone with low battery consumption. Lightweight,'||chr(10)||
'foldable, with socket for single earphone and spare battery compartment.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2350'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Desk - W/48'''||chr(10)||
'), UNISTR('||chr(10)||
'''Desk - 48 inch white laminate without return; capitalizable, taxable item.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_pro';

s:=s||'duct_descriptions VALUES (2351'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Desk - W/48/R'''||chr(10)||
'), UNISTR('||chr(10)||
'''Desk - 60 inch white laminate with 48 inch return; capitalizable,'||chr(10)||
'taxable item.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2779'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Desk - OS/O/F'''||chr(10)||
'), UNISTR('||chr(10)||
'''Executive-style oversized oak desk with file drawers. Final finish is'||chr(10)||
'customizable when ordered, light or dark oak stain,'||chr(10)||
'or natural hand rubbe';

s:=s||'d clear.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3337'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Mobile Web Phone'''||chr(10)||
'), UNISTR('||chr(10)||
'''Mobile phone including monthly fee for Web access. Slimline shape'||chr(10)||
'with leather-look carrying case and belt clip.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2091'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Paper Tablet LW 8 1/2 x 11'''||chr(10)||
'), UNISTR('||chr(10)||
'''Paper tablet, lined, white, size 8 1/2 x 11 inch'''||chr(10)||
'));'||chr(10)||
'INSERT';

s:=s||' INTO oehr_product_descriptions VALUES (2093'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Pens - 10/FP'''||chr(10)||
'), UNISTR('||chr(10)||
'''Permanent ink pen dries quickly and is smear resistant. Provides smooth,'||chr(10)||
'skip-free writing. Fine point. Single color boxes (black, blue, red) or'||chr(10)||
'assorted box (6 black, 3 blue, and 1 red).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2144'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Card Organizer Cover'''||chr(10)||
'), UNISTR('||chr(10)||
'''Replacement cov';

s:=s||'er for desk top style business card holder. Smoke'||chr(10)||
'grey (original color) or clear plastic.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2336'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Business Cards Box - 250'''||chr(10)||
'), UNISTR('||chr(10)||
'''Business cards box, capacity 250. Use form BC110-2, Rev. 3/2000'||chr(10)||
'(hardcopy or online) when ordering and complete all fields marked'||chr(10)||
'with an asterisk.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES ';

s:=s||'(2337'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Business Cards - 1000/2L'''||chr(10)||
'), UNISTR('||chr(10)||
'''Business cards box, capacity 1000, 2-sided with different language on'||chr(10)||
'each side. Use form BC111-2, Rev. 12/1999 (hardcopy or online) when'||chr(10)||
'ordering - complete all fields marked with an asterisk and check box for'||chr(10)||
'second language (English is always on side 1).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2339'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Paper ';

s:=s||'- Std Printer'''||chr(10)||
'), UNISTR('||chr(10)||
'''20 lb. 8.5x11 inch white laser printer paper (recycled),'||chr(10)||
'ten 500-sheet reams'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2536'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Business Cards - 250/2L'''||chr(10)||
'), UNISTR('||chr(10)||
'''Business cards box, capacity 250, 2-sided with different language on'||chr(10)||
'each side. Use form BC111-2, Rev. 12/1999 (hardcopy or online) when'||chr(10)||
'ordering - complete all fields marked with an as';

s:=s||'terisk and check box for'||chr(10)||
'second language (English is always on side 1).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2537'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Business Cards Box - 1000'''||chr(10)||
'), UNISTR('||chr(10)||
'''Business cards box, capacity 1000. Use form BC110-3, Rev. 3/2000'||chr(10)||
'(hardcopy or online) when ordering and complete all fields marked with'||chr(10)||
'an asterisk.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2783'||chr(10)||
', ''US'''||chr(10)||
', U';

s:=s||'NISTR('||chr(10)||
'''Clips - Paper'''||chr(10)||
'), UNISTR('||chr(10)||
'''World brand paper clips set the standard for quality.10 boxes with 100'||chr(10)||
'clips each. #1 regular or jumbo, smooth or non-skid.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2808'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Paper Tablet LY 8 1/2 x 11'''||chr(10)||
'), UNISTR('||chr(10)||
'''Paper Tablet, Lined, Yellow, size 8 1/2 x 11 inch'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2810'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Ink';

s:=s||'visible Pens'''||chr(10)||
'), UNISTR('||chr(10)||
'''Rollerball pen is equipped with a smooth precision tip. See-through'||chr(10)||
'rubber grip allows for a visible ink supply and comfortable writing.'||chr(10)||
'4-pack with 1 each, black, blue, red, green.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2870'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Pencil - Mech'''||chr(10)||
'), UNISTR('||chr(10)||
'''Ergonomically designed mechanical pencil for improved writing comfort.'||chr(10)||
'Refillable erasers a';

s:=s||'nd leads. Available in three lead sizes: .5mm (fine));.7mm (medium)); and .9mm (thick).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3051'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Pens - 10/MP'''||chr(10)||
'), UNISTR('||chr(10)||
'''Permanent ink pen dries quickly and is smear resistant. Provides smooth,'||chr(10)||
'skip-free writing. Medium point. Single color boxes (black, blue, red) or'||chr(10)||
'assorted box (6 black, 3 blue, and 1 red).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_';

s:=s||'product_descriptions VALUES (3150'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Card Holder - 25'''||chr(10)||
'), UNISTR('||chr(10)||
'''Card Holder; heavy plastic business card holder with embossed corporate'||chr(10)||
'logo. Holds about 25 of your business cards, depending on card thickness.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3208'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Pencils - Wood'''||chr(10)||
'), UNISTR('||chr(10)||
'''Box of 2 dozen wooden pencils. Specify lead type when ordering: 2H'||chr(10)||
'(do';

s:=s||'uble hard), H (hard), HB (hard black), B (soft black).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3209'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Sharpener - Pencil'''||chr(10)||
'), UNISTR('||chr(10)||
'''Electric Pencil Sharpener Rugged steel cutters for long life.'||chr(10)||
'PencilSaver helps prevent over-sharpening. Non-skid rubber feet.'||chr(10)||
'Built-in pencil holder.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3224'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Card Organizer';

s:=s||' - 250'''||chr(10)||
'), UNISTR('||chr(10)||
'''Portable holder for organizing business cards, capacity 250. Booklet'||chr(10)||
'style with slip in, transparent pockets for business cards. Optional'||chr(10)||
'alphabet tabs. Specify cover color when ordering (dark brown, beige,'||chr(10)||
'burgundy, black, and light grey).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3225'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Card Organizer - 1000'''||chr(10)||
'), UNISTR('||chr(10)||
'''Holder for organizing business';

s:=s||' cards with alphabet dividers; capacity'||chr(10)||
'1000. Desk top style with smoke grey cover and black base. Lid is'||chr(10)||
'removable for storing inside drawer.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3511'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Paper - HQ Printer'''||chr(10)||
'), UNISTR('||chr(10)||
'''Quality paper for inkjet and laser printers tested to resist printer'||chr(10)||
'jams. Acid free for archival purposes. 22lb. weight with brightness of 92.'||chr(10)||
'Size: 8';

s:=s||' 1/2 x 11. Single 500-sheet ream.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3515'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Lead Replacement'''||chr(10)||
'), UNISTR('||chr(10)||
'''Refill leads for mechanical pencils. Each pack contains 25 leads and'||chr(10)||
'a replacement eraser. Available in three lead sizes: .5mm (fine)); .7mm'||chr(10)||
'(medium)); and .9mm (thick).'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2986'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Manual - Vision OS';

s:=s||'/2x +'''||chr(10)||
'), UNISTR('||chr(10)||
'''Manuals for Vision Operating System V 2.x and Vision Office Suite'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3163'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Manual - Vision Net6.3/US'''||chr(10)||
'), UNISTR('||chr(10)||
'''Vision Networking V6.3 Reference Manual. US version with advanced'||chr(10)||
'encryption.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3165'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Manual - Vision Tools2.0'''||chr(10)||
'), UNISTR('||chr(10)||
'''Vision Busin';

wwv_flow_api.append_to_install_script(
  p_id => 313868810903622867 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'ess Tools Suite V2.0 Reference Manual. Includes installation,'||chr(10)||
'configuration, and user guide.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3167'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Manual - Vision OS/2.x'''||chr(10)||
'), UNISTR('||chr(10)||
'''Vision Operating System V2.0/2.1/2/3 Reference Manual. Complete'||chr(10)||
'installation, configuration, management, and tuning information for Vision'||chr(10)||
'system administration. Note that this manual replaces the ';

s:=s||'individual'||chr(10)||
'Version 2.0 and 2.1 manuals.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3216'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Manual - Vision Net6.3'''||chr(10)||
'), UNISTR('||chr(10)||
'''Vision Networking V6.3 Reference Manual. Non-US version with basic'||chr(10)||
'encryption.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3220'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Manual - Vision OS/1.2'''||chr(10)||
'), UNISTR('||chr(10)||
'''Vision Operating System V1.2 Reference Manual. Complete insta';

s:=s||'llation,'||chr(10)||
'configuration, management, and tuning information for Vision system'||chr(10)||
'administration.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1729'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Chemicals - RCP'''||chr(10)||
'), UNISTR('||chr(10)||
'''Cleaning Chemicals - 3500 roller clean pads'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1910'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''FG Stock - H'''||chr(10)||
'), UNISTR('||chr(10)||
'''Fiberglass Stock - heavy duty, 1 thick'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr';

s:=s||'_product_descriptions VALUES (1912'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SS Stock - 3mm'''||chr(10)||
'), UNISTR('||chr(10)||
'''Stainless steel stock - 3mm. Can be predrilled for standard power'||chr(10)||
'supplies, motherboard holders, and hard drives. Please use appropriate'||chr(10)||
'template to identify model number, placement, and size of finished sheet'||chr(10)||
'when placing order for drilled sheet.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (1940'||chr(10)||
', ''US'''||chr(10)||
', UNISTR';

s:=s||'('||chr(10)||
'''ESD Bracelet/Clip'''||chr(10)||
'), UNISTR('||chr(10)||
'''Electro static discharge bracelet with alligator clip for easy'||chr(10)||
'connection to computer chassis or other ground.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2030'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Latex Gloves'''||chr(10)||
'), UNISTR('||chr(10)||
'''Latex Gloves for assemblers, chemical handlers, fitters. Heavy duty,'||chr(10)||
'safety orange, with textured grip on fingers and thumb. Waterproof and'||chr(10)||
'shock-proof up ';

s:=s||'to 220 volts/2 amps, 110 volts/5 amps. Acid proof for up'||chr(10)||
'to 5 minutes.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2326'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plastic Stock - Y'''||chr(10)||
'), UNISTR('||chr(10)||
'''Plastic Stock - Yellow, standard quality.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2330'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plastic Stock - R'''||chr(10)||
'), UNISTR('||chr(10)||
'''Plastic Stock - Red, standard quality.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descript';

s:=s||'ions VALUES (2334'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Resin'''||chr(10)||
'), UNISTR('||chr(10)||
'''General purpose synthetic resin.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2340'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Chemicals - SW'''||chr(10)||
'), UNISTR('||chr(10)||
'''Cleaning Chemicals - 3500 staticide wipes'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2365'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Chemicals - TCS'''||chr(10)||
'), UNISTR('||chr(10)||
'''Cleaning Chemical - 2500 transport cleaning sheets'''||chr(10)||
'));'||chr(10)||
'INSERT IN';

s:=s||'TO oehr_product_descriptions VALUES (2594'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''FG Stock - L'''||chr(10)||
'), UNISTR('||chr(10)||
'''Fiberglass Stock - light weight for internal heat shielding, 1/4 thick'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2596'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''SS Stock - 1mm'''||chr(10)||
'), UNISTR('||chr(10)||
'''Stainless steel stock - 3mm. Can be predrilled for standard model'||chr(10)||
'motherboard and battery holders. Please use appropriate template to'||chr(10)||
'identif';

s:=s||'y model number, placement, and size of finished sheet when placing'||chr(10)||
'order for drilled sheet.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2631'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''ESD Bracelet/QR'''||chr(10)||
'), UNISTR('||chr(10)||
'''Electro Static Discharge Bracelet: 2 piece lead with quick release'||chr(10)||
'connector. One piece stays permanently attached to computer chassis with'||chr(10)||
'screw, the other is attached to the bracelet. Additional permanen';

s:=s||'t'||chr(10)||
'ends available.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2721'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PC Bag - L/S'''||chr(10)||
'), UNISTR('||chr(10)||
'''Black Leather Computer Case - single laptop capacity with pockets for'||chr(10)||
'manuals, additional hardware, and work papers. Adjustable protective straps'||chr(10)||
'and removable pocket for power supply and cables.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2722'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PC Bag - L/D';

s:=s||''''||chr(10)||
'), UNISTR('||chr(10)||
'''Black Leather Computer Case - double laptop capacity with pockets for'||chr(10)||
'additional hardware or manuals and work papers. Adjustable protective straps'||chr(10)||
'and removable pockets for power supplies and cables. Double wide shoulder'||chr(10)||
'strap for comfort.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2725'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Machine Oil'''||chr(10)||
'), UNISTR('||chr(10)||
'''Machine Oil for Lubrication of CD-ROM drive doo';

s:=s||'rs and slides.'||chr(10)||
'Self-cleaning adjustable nozzle for fine to medium flow.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (2782'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''PC Bag - C/S'''||chr(10)||
'), UNISTR('||chr(10)||
'''Canvas Computer Case - single laptop capacity with pockets for manuals,'||chr(10)||
'additional hardware, and work papers. Adjustable protective straps and'||chr(10)||
'removable pocket for power supply and cables. Outside pocket with snap'||chr(10)||
'closure for ea';

s:=s||'sy access while travelling.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3187'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plastic Stock - B/HD'''||chr(10)||
'), UNISTR('||chr(10)||
'''Plastic Stock - Blue, high density.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3189'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plastic Stock - G'''||chr(10)||
'), UNISTR('||chr(10)||
'''Plastic Stock - Green, standard density.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3191'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plastic ';

s:=s||'Stock - O'''||chr(10)||
'), UNISTR('||chr(10)||
'''Plastic Stock - Orange, standard density.'''||chr(10)||
'));'||chr(10)||
'INSERT INTO oehr_product_descriptions VALUES (3193'||chr(10)||
', ''US'''||chr(10)||
', UNISTR('||chr(10)||
'''Plastic Stock - W/HD'''||chr(10)||
'), UNISTR('||chr(10)||
'''Plastic Stock - White, high density.'''||chr(10)||
'));';

wwv_flow_api.append_to_install_script(
  p_id => 313868810903622867 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      seed_orders.sql '||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_orders VALUES (2458'||chr(10)||
'	,TO_TIMESTAMP(''16-AUG-99 02.34.12.234359 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,101'||chr(10)||
'	,0'||chr(10)||
'	,78279.6'||chr(10)||
'	,153'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2397'||chr(10)||
'	,TO_TIMESTAMP(''19-NOV-99 03.41.54.696211 PM'''||chr(10)||
'	';

s:=s||',''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,102'||chr(10)||
'	,1'||chr(10)||
'	,42283.2'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2454'||chr(10)||
'	,TO_TIMESTAMP(''02-OCT-99 04.49.34.678340 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,103'||chr(10)||
'	,1'||chr(10)||
'	,6653.4'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2354'||chr(10)||
'	,TO_TIMESTAMP(''14-JUL-00 05.18.23.234567 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.S';

s:=s||'S.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,104'||chr(10)||
'	,0'||chr(10)||
'	,46257'||chr(10)||
'	,155'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2358'||chr(10)||
'	,TO_TIMESTAMP(''08-JAN-00 06.03.12.654278 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,105'||chr(10)||
'	,2'||chr(10)||
'	,7826'||chr(10)||
'	,155'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2381'||chr(10)||
'	,TO_TIMESTAMP(''14-MAY-00 07.59.08.843679 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LA';

s:=s||'NGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,106'||chr(10)||
'	,3'||chr(10)||
'	,23034.6'||chr(10)||
'	,156'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2440'||chr(10)||
'	,TO_TIMESTAMP(''31-AUG-99 08.53.06.008765 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,107'||chr(10)||
'	,3'||chr(10)||
'	,70576.9'||chr(10)||
'	,156'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2357'||chr(10)||
'	,TO_TIMESTAMP(''08-JAN-98 09.19.44.123456 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'';

s:=s||'	,''direct'''||chr(10)||
'	,108'||chr(10)||
'	,5'||chr(10)||
'	,59872.4'||chr(10)||
'	,158'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2394'||chr(10)||
'	,TO_TIMESTAMP(''10-FEB-00 10.22.35.564789 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,109'||chr(10)||
'	,5'||chr(10)||
'	,21863'||chr(10)||
'	,158'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2435'||chr(10)||
'	,TO_TIMESTAMP(''02-SEP-99 10.22.53.134567 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,144'||chr(10)||
'	,6';

s:=s||''||chr(10)||
'	,62303'||chr(10)||
'	,159'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2455'||chr(10)||
'	,TO_TIMESTAMP(''20-SEP-99 10.34.11.456789 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,145'||chr(10)||
'	,7'||chr(10)||
'	,14087.5'||chr(10)||
'	,160'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2379'||chr(10)||
'	,TO_TIMESTAMP(''16-MAY-99 01.22.24.234567 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,146'||chr(10)||
'	,8'||chr(10)||
'	,17848.2'||chr(10)||
'	,161'||chr(10)||
'	,N';

s:=s||'ULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2396'||chr(10)||
'	,TO_TIMESTAMP(''02-FEB-98 02.34.56.345678 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,147'||chr(10)||
'	,8'||chr(10)||
'	,34930'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2406'||chr(10)||
'	,TO_TIMESTAMP(''29-JUN-99 03.41.20.098765 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,148'||chr(10)||
'	,8'||chr(10)||
'	,2854.2'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oe';

s:=s||'hr_orders VALUES (2434'||chr(10)||
'	,TO_TIMESTAMP(''13-SEP-99 04.49.30.647893 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,149'||chr(10)||
'	,8'||chr(10)||
'	,268651.8'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2436'||chr(10)||
'	,TO_TIMESTAMP(''02-SEP-99 05.18.04.378034 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,116'||chr(10)||
'	,8'||chr(10)||
'	,6394.8'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (';

s:=s||'2446'||chr(10)||
'	,TO_TIMESTAMP(''27-JUL-99 06.03.08.302945 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,117'||chr(10)||
'	,8'||chr(10)||
'	,103679.3'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2447'||chr(10)||
'	,TO_TIMESTAMP(''27-JUL-00 07.59.10.223344 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,101'||chr(10)||
'	,8'||chr(10)||
'	,33893.6'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2432'||chr(10)||
'	,TO_TIMESTA';

s:=s||'MP(''14-SEP-99 08.53.40.223345 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,102'||chr(10)||
'	,10'||chr(10)||
'	,10523'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2433'||chr(10)||
'	,TO_TIMESTAMP(''13-SEP-99 09.19.00.654279 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,103'||chr(10)||
'	,10'||chr(10)||
'	,78'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2355'||chr(10)||
'	,TO_TIMESTAMP(''26-JAN-98 10.22.51.';

s:=s||'962632 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,104'||chr(10)||
'	,8'||chr(10)||
'	,94513.5'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2356'||chr(10)||
'	,TO_TIMESTAMP(''26-JAN-00 10.22.41.934562 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,105'||chr(10)||
'	,5'||chr(10)||
'	,29473.8'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2359'||chr(10)||
'	,TO_TIMESTAMP(''08-JAN-98 10.34.13.112233 PM'''||chr(10)||
'	,''DD';

s:=s||'-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,106'||chr(10)||
'	,9'||chr(10)||
'	,5543.1'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2360'||chr(10)||
'	,TO_TIMESTAMP(''14-NOV-99 01.22.31.223344 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,107'||chr(10)||
'	,4'||chr(10)||
'	,990.4'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2361'||chr(10)||
'	,TO_TIMESTAMP(''13-NOV-99 02.34.21.986210 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF';

s:=s||' AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,108'||chr(10)||
'	,8'||chr(10)||
'	,120131.3'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2362'||chr(10)||
'	,TO_TIMESTAMP(''13-NOV-99 03.41.10.619477 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,109'||chr(10)||
'	,4'||chr(10)||
'	,92829.4'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2363'||chr(10)||
'	,TO_TIMESTAMP(''23-OCT-99 04.49.56.346122 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DAT';

s:=s||'E_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,144'||chr(10)||
'	,0'||chr(10)||
'	,10082.3'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2364'||chr(10)||
'	,TO_TIMESTAMP(''28-AUG-99 05.18.45.942399 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,145'||chr(10)||
'	,4'||chr(10)||
'	,9500'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2365'||chr(10)||
'	,TO_TIMESTAMP(''28-AUG-99 06.03.34.003399 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American';

s:=s||''')'||chr(10)||
'	,''online'''||chr(10)||
'	,146'||chr(10)||
'	,9'||chr(10)||
'	,27455.3'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2366'||chr(10)||
'	,TO_TIMESTAMP(''28-AUG-99 07.59.23.144778 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,147'||chr(10)||
'	,5'||chr(10)||
'	,37319.4'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2367'||chr(10)||
'	,TO_TIMESTAMP(''27-JUN-00 08.53.32.335522 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,';

s:=s||'148'||chr(10)||
'	,10'||chr(10)||
'	,144054.8'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2368'||chr(10)||
'	,TO_TIMESTAMP(''26-JUN-00 09.19.43.190089 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,149'||chr(10)||
'	,10'||chr(10)||
'	,60065'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2369'||chr(10)||
'	,TO_TIMESTAMP(''26-JUN-99 10.22.54.009932 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,116'||chr(10)||
'	,0'||chr(10)||
'	,11097';

s:=s||'.4'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2370'||chr(10)||
'	,TO_TIMESTAMP(''26-JUN-00 11.22.11.647398 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,117'||chr(10)||
'	,4'||chr(10)||
'	,126'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2371'||chr(10)||
'	,TO_TIMESTAMP(''16-MAY-99 12.34.56.113356 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,118'||chr(10)||
'	,6'||chr(10)||
'	,79405.6'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'';

s:=s||'INSERT INTO oehr_orders VALUES (2372'||chr(10)||
'	,TO_TIMESTAMP(''27-FEB-99 01.22.33.356789 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,119'||chr(10)||
'	,9'||chr(10)||
'	,16447.2'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2373'||chr(10)||
'	,TO_TIMESTAMP(''27-FEB-00 02.34.51.220065 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,120'||chr(10)||
'	,4'||chr(10)||
'	,416'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_ord';

s:=s||'ers VALUES (2374'||chr(10)||
'	,TO_TIMESTAMP(''27-FEB-00 03.41.45.109654 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,121'||chr(10)||
'	,0'||chr(10)||
'	,4797'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2375'||chr(10)||
'	,TO_TIMESTAMP(''26-FEB-99 04.49.50.459233 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,122'||chr(10)||
'	,2'||chr(10)||
'	,103834.4'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2376'||chr(10)||
'	';

s:=s||',TO_TIMESTAMP(''07-JUN-99 05.18.08.883310 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,123'||chr(10)||
'	,6'||chr(10)||
'	,11006.2'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2377'||chr(10)||
'	,TO_TIMESTAMP(''07-JUN-99 06.03.01.001100 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,141'||chr(10)||
'	,5'||chr(10)||
'	,38017.8'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2378'||chr(10)||
'	,TO_TIMESTAMP(''2';

s:=s||'4-MAY-99 07.59.10.010101 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,142'||chr(10)||
'	,5'||chr(10)||
'	,25691.3'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2380'||chr(10)||
'	,TO_TIMESTAMP(''16-MAY-99 08.53.02.909090 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,143'||chr(10)||
'	,3'||chr(10)||
'	,27132.6'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2382'||chr(10)||
'	,TO_TIMESTAMP(''14-MAY-00 09.19.0';

s:=s||'3.828321 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,144'||chr(10)||
'	,8'||chr(10)||
'	,71173'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2383'||chr(10)||
'	,TO_TIMESTAMP(''12-MAY-00 10.22.30.545103 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,145'||chr(10)||
'	,8'||chr(10)||
'	,36374.7'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2384'||chr(10)||
'	,TO_TIMESTAMP(''12-MAY-00 11.22.34.525972 AM'''||chr(10)||
'	,''DD';

s:=s||'-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,146'||chr(10)||
'	,3'||chr(10)||
'	,29249.1'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2385'||chr(10)||
'	,TO_TIMESTAMP(''08-DEC-99 12.34.11.331392 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,147'||chr(10)||
'	,4'||chr(10)||
'	,295892'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2386'||chr(10)||
'	,TO_TIMESTAMP(''06-DEC-99 01.22.34.225609 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.';

s:=s||'FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,148'||chr(10)||
'	,10'||chr(10)||
'	,21116.9'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2387'||chr(10)||
'	,TO_TIMESTAMP(''11-MAR-99 02.34.56.536966 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,149'||chr(10)||
'	,5'||chr(10)||
'	,52758.9'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2388'||chr(10)||
'	,TO_TIMESTAMP(''04-JUN-99 03.41.12.554435 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_D';

s:=s||'ATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,150'||chr(10)||
'	,4'||chr(10)||
'	,282694.3'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2389'||chr(10)||
'	,TO_TIMESTAMP(''04-JUN-00 04.49.43.546954 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''online'''||chr(10)||
'	,151'||chr(10)||
'	,4'||chr(10)||
'	,17620'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2390'||chr(10)||
'	,TO_TIMESTAMP(''18-NOV-99 05.18.50.546851 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=Amer';

s:=s||'ican'')'||chr(10)||
'	,''online'''||chr(10)||
'	,152'||chr(10)||
'	,9'||chr(10)||
'	,7616.8'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2391'||chr(10)||
'	,TO_TIMESTAMP(''27-FEB-98 06.03.03.828330 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,153'||chr(10)||
'	,2'||chr(10)||
'	,48070.6'||chr(10)||
'	,156'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2392'||chr(10)||
'	,TO_TIMESTAMP(''21-JUL-99 07.59.57.571057 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'';

s:=s||'	,154'||chr(10)||
'	,9'||chr(10)||
'	,26632'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2393'||chr(10)||
'	,TO_TIMESTAMP(''10-FEB-00 08.53.19.528202 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,155'||chr(10)||
'	,4'||chr(10)||
'	,23431.9'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2395'||chr(10)||
'	,TO_TIMESTAMP(''02-FEB-98 09.19.11.227550 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,156'||chr(10)||
'	,3'||chr(10)||
'	,68501'||chr(10)||
'	,';

s:=s||'163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2398'||chr(10)||
'	,TO_TIMESTAMP(''19-NOV-99 10.22.53.224175 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,157'||chr(10)||
'	,9'||chr(10)||
'	,7110.3'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2399'||chr(10)||
'	,TO_TIMESTAMP(''19-NOV-99 11.22.38.340990 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,158'||chr(10)||
'	,0'||chr(10)||
'	,25270.3'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_orders VALUES (2400'||chr(10)||
'	,TO_TIMESTAMP(''10-JUL-99 12.34.29.559387 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,159'||chr(10)||
'	,2'||chr(10)||
'	,69286.4'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2401'||chr(10)||
'	,TO_TIMESTAMP(''10-JUL-99 01.22.53.554822 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,160'||chr(10)||
'	,3'||chr(10)||
'	,969.2'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders V';

s:=s||'ALUES (2402'||chr(10)||
'	,TO_TIMESTAMP(''02-JUL-99 02.34.44.665170 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,161'||chr(10)||
'	,8'||chr(10)||
'	,600'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2403'||chr(10)||
'	,TO_TIMESTAMP(''01-JUL-99 03.49.13.615512 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,162'||chr(10)||
'	,0'||chr(10)||
'	,220'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2404'||chr(10)||
'	,TO_TIMESTAMP';

s:=s||'(''01-JUL-99 03.49.13.664085 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,163'||chr(10)||
'	,6'||chr(10)||
'	,510'||chr(10)||
'	,158'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2405'||chr(10)||
'	,TO_TIMESTAMP(''01-JUL-99 03.49.13.678123 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,164'||chr(10)||
'	,5'||chr(10)||
'	,1233'||chr(10)||
'	,159'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2407'||chr(10)||
'	,TO_TIMESTAMP(''29-JUN-99 06.03.21.5260';

s:=s||'05 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,165'||chr(10)||
'	,9'||chr(10)||
'	,2519'||chr(10)||
'	,155'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2408'||chr(10)||
'	,TO_TIMESTAMP(''29-JUN-99 07.59.31.333617 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,166'||chr(10)||
'	,1'||chr(10)||
'	,309'||chr(10)||
'	,158'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2409'||chr(10)||
'	,TO_TIMESTAMP(''29-JUN-99 08.53.41.984501 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI';

s:=s||'.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,167'||chr(10)||
'	,2'||chr(10)||
'	,48'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2410'||chr(10)||
'	,TO_TIMESTAMP(''24-MAY-00 09.19.51.985501 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,168'||chr(10)||
'	,6'||chr(10)||
'	,45175'||chr(10)||
'	,156'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2411'||chr(10)||
'	,TO_TIMESTAMP(''24-MAY-99 10.22.10.548639 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LA';

s:=s||'NGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,169'||chr(10)||
'	,8'||chr(10)||
'	,15760.5'||chr(10)||
'	,156'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2412'||chr(10)||
'	,TO_TIMESTAMP(''29-MAR-98 11.22.09.509801 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,170'||chr(10)||
'	,9'||chr(10)||
'	,66816'||chr(10)||
'	,158'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2413'||chr(10)||
'	,TO_TIMESTAMP(''29-MAR-00 12.34.04.525934 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,';

s:=s||'''direct'''||chr(10)||
'	,101'||chr(10)||
'	,5'||chr(10)||
'	,48552'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2414'||chr(10)||
'	,TO_TIMESTAMP(''29-MAR-99 01.22.40.536996 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,102'||chr(10)||
'	,8'||chr(10)||
'	,10794.6'||chr(10)||
'	,153'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2415'||chr(10)||
'	,TO_TIMESTAMP(''29-MAR-97 02.34.50.545196 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,103'||chr(10)||
'	,6'||chr(10)||
'	';

s:=s||',310'||chr(10)||
'	,161'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2416'||chr(10)||
'	,TO_TIMESTAMP(''29-MAR-99 03.41.20.945676 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,104'||chr(10)||
'	,6'||chr(10)||
'	,384'||chr(10)||
'	,160'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2417'||chr(10)||
'	,TO_TIMESTAMP(''20-MAR-99 04.49.10.974352 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,105'||chr(10)||
'	,5'||chr(10)||
'	,1926.6'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'IN';

s:=s||'SERT INTO oehr_orders VALUES (2418'||chr(10)||
'	,TO_TIMESTAMP(''20-MAR-96 05.18.21.862632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,106'||chr(10)||
'	,4'||chr(10)||
'	,5546.6'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2419'||chr(10)||
'	,TO_TIMESTAMP(''20-MAR-99 06.03.32.764632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,107'||chr(10)||
'	,3'||chr(10)||
'	,31574'||chr(10)||
'	,160'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders';

s:=s||' VALUES (2420'||chr(10)||
'	,TO_TIMESTAMP(''13-MAR-99 07.59.43.666320 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,108'||chr(10)||
'	,2'||chr(10)||
'	,29750'||chr(10)||
'	,160'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2421'||chr(10)||
'	,TO_TIMESTAMP(''12-MAR-99 08.53.54.562432 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,109'||chr(10)||
'	,1'||chr(10)||
'	,72836'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2422'||chr(10)||
'	,TO_TI';

s:=s||'MESTAMP(''16-DEC-99 09.19.55.462332 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,144'||chr(10)||
'	,2'||chr(10)||
'	,11188.5'||chr(10)||
'	,153'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2423'||chr(10)||
'	,TO_TIMESTAMP(''21-NOV-99 11.22.33.362632 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,145'||chr(10)||
'	,3'||chr(10)||
'	,10367.7'||chr(10)||
'	,160'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2424'||chr(10)||
'	,TO_TIMESTAMP(''21-NOV-99';

s:=s||' 11.22.33.263332 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,146'||chr(10)||
'	,4'||chr(10)||
'	,13824'||chr(10)||
'	,153'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2425'||chr(10)||
'	,TO_TIMESTAMP(''17-NOV-98 12.34.22.162552 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,147'||chr(10)||
'	,5'||chr(10)||
'	,1500.8'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2426'||chr(10)||
'	,TO_TIMESTAMP(''17-NOV-98 01.22.11.262552 AM'''||chr(10)||
'';

s:=s||'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,148'||chr(10)||
'	,6'||chr(10)||
'	,7200'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2427'||chr(10)||
'	,TO_TIMESTAMP(''10-NOV-99 02.34.22.362124 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,149'||chr(10)||
'	,7'||chr(10)||
'	,9055'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2428'||chr(10)||
'	,TO_TIMESTAMP(''10-NOV-99 03.41.34.463567 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.F';

s:=s||'F AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,116'||chr(10)||
'	,8'||chr(10)||
'	,14685.8'||chr(10)||
'	,NULL'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2429'||chr(10)||
'	,TO_TIMESTAMP(''10-NOV-99 04.49.25.526321 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,117'||chr(10)||
'	,9'||chr(10)||
'	,50125'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2430'||chr(10)||
'	,TO_TIMESTAMP(''02-OCT-99 05.18.36.663332 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_L';

s:=s||'ANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,101'||chr(10)||
'	,8'||chr(10)||
'	,29669.9'||chr(10)||
'	,159'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2431'||chr(10)||
'	,TO_TIMESTAMP(''14-SEP-98 06.03.04.763452 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,102'||chr(10)||
'	,1'||chr(10)||
'	,5610.6'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2437'||chr(10)||
'	,TO_TIMESTAMP(''01-SEP-98 07.59.15.826132 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'';

s:=s||'	,''direct'''||chr(10)||
'	,103'||chr(10)||
'	,4'||chr(10)||
'	,13550'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2438'||chr(10)||
'	,TO_TIMESTAMP(''01-SEP-99 08.53.26.934626 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,104'||chr(10)||
'	,0'||chr(10)||
'	,5451'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2439'||chr(10)||
'	,TO_TIMESTAMP(''31-AUG-99 09.19.37.811132 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,105'||chr(10)||
'	,1'||chr(10)||
'	,';

s:=s||'22150.1'||chr(10)||
'	,159'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2441'||chr(10)||
'	,TO_TIMESTAMP(''01-AUG-00 10.22.48.734526 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,106'||chr(10)||
'	,5'||chr(10)||
'	,2075.2'||chr(10)||
'	,160'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2442'||chr(10)||
'	,TO_TIMESTAMP(''27-JUL-90 11.22.59.662632 AM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,107'||chr(10)||
'	,9'||chr(10)||
'	,52471.9'||chr(10)||
'	,154'||chr(10)||
'	,NUL';

s:=s||'L); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2443'||chr(10)||
'	,TO_TIMESTAMP(''27-JUL-90 12.34.16.562632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,108'||chr(10)||
'	,0'||chr(10)||
'	,3646'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2444'||chr(10)||
'	,TO_TIMESTAMP(''27-JUL-99 01.22.27.462632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,109'||chr(10)||
'	,1'||chr(10)||
'	,77727.2'||chr(10)||
'	,155'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_orders VALUES (2445'||chr(10)||
'	,TO_TIMESTAMP(''27-JUL-90 02.34.38.362632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,144'||chr(10)||
'	,8'||chr(10)||
'	,5537.8'||chr(10)||
'	,158'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2448'||chr(10)||
'	,TO_TIMESTAMP(''18-JUN-99 03.41.49.262632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,145'||chr(10)||
'	,5'||chr(10)||
'	,1388'||chr(10)||
'	,158'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2449'||chr(10)||
'	';

s:=s||',TO_TIMESTAMP(''13-JUN-99 04.49.07.162632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,146'||chr(10)||
'	,6'||chr(10)||
'	,86'||chr(10)||
'	,155'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2450'||chr(10)||
'	,TO_TIMESTAMP(''11-APR-99 05.18.10.362632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,147'||chr(10)||
'	,3'||chr(10)||
'	,1636'||chr(10)||
'	,159'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2451'||chr(10)||
'	,TO_TIMESTAMP(''17-DEC-99 0';

s:=s||'6.03.52.562632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,148'||chr(10)||
'	,7'||chr(10)||
'	,10474.6'||chr(10)||
'	,154'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2452'||chr(10)||
'	,TO_TIMESTAMP(''06-OCT-99 07.59.43.462632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,149'||chr(10)||
'	,5'||chr(10)||
'	,12589'||chr(10)||
'	,159'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2453'||chr(10)||
'	,TO_TIMESTAMP(''04-OCT-99 08.53.34.362632 PM'''||chr(10)||
'	';

s:=s||',''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,116'||chr(10)||
'	,0'||chr(10)||
'	,129'||chr(10)||
'	,153'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2456'||chr(10)||
'	,TO_TIMESTAMP(''07-NOV-98 08.53.25.989889 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,117'||chr(10)||
'	,0'||chr(10)||
'	,3878.4'||chr(10)||
'	,163'||chr(10)||
'	,NULL); '||chr(10)||
'INSERT INTO oehr_orders VALUES (2457'||chr(10)||
'	,TO_TIMESTAMP(''31-OCT-99 10.22.16.162632 PM'''||chr(10)||
'	,''DD-MON-RR HH.MI.SS.FF';

s:=s||' AM'''||chr(10)||
'	,''NLS_DATE_LANGUAGE=American'')'||chr(10)||
'	,''direct'''||chr(10)||
'	,118'||chr(10)||
'	,5'||chr(10)||
'	,21586.2'||chr(10)||
'	,159'||chr(10)||
'	,NULL);'||chr(10)||
''||chr(10)||
'REM ==================================================================='||chr(10)||
'REM correction: onlide oehr_orders don''t have a sales_rep_id'||chr(10)||
'REM ==================================================================='||chr(10)||
''||chr(10)||
'UPDATE oehr_orders'||chr(10)||
'SET    sales_rep_id = NULL'||chr(10)||
'WHERE  order_mode = ''online'';'||chr(10)||
''||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_order_i';

s:=s||'tems(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2355, 1,2289,    46,200); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356, 1,2264, 199.1, 38); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2357, 1,2211,   3.3,140); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_pri';

s:=s||'ce,quantity) VALUES (2358, 1,1781, 226.6,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2359, 1,2337, 270.6,  1); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2360, 1,2058,    23, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2361, 1,2289,    46,180);';

s:=s||' '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362, 1,2289,    48,200); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2363, 1,2264, 199.1,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2364, 1,1910,    14,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_it';

s:=s||'em_id,product_id,unit_price,quantity) VALUES (2365, 1,2289,    48, 92); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366, 1,2359, 226.6,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2367, 1,2289,    48, 99); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (';

s:=s||'2354, 1,3106,    48, 61); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2368, 1,3106,    48,150); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369, 1,3150,    18,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2370, 1,1910,    14,  9);'||chr(10)||
'INSERT INTO oehr_orde';

s:=s||'r_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2371, 1,2274,   157,  6); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2372, 1,3106,    48,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2373, 1,1820,    49,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_pr';

s:=s||'ice,quantity) VALUES (2374, 1,2422,   150, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 1,3106,    42,140); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376, 1,2270,    60, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2377, 1,2289,    42,130)';

s:=s||'; '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2378, 1,2403, 113.3, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2379, 1,3106,    42, 92); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380, 1,3106,    42, 26); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_';

s:=s||'item_id,product_id,unit_price,quantity) VALUES (2381, 1,3117,    38,110); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 1,3106,    42,160); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2383, 1,2409, 194.7, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES';

s:=s||' (2384, 1,2289,    43, 95); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2385, 1,2289,    43,200); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2386, 1,2330,   1.1,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2387, 1,2211,   3.3, 52); '||chr(10)||
'INSERT INTO oehr_';

s:=s||'order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2388, 1,2289,    43,150); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389, 1,3106,    43,180); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2390, 1,1910,    14,  4);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,un';

s:=s||'it_price,quantity) VALUES (2391, 1,1787,   101,  5); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2392, 1,3106,    43, 63); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393, 1,3051,    12, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394, 1,3117,    41';

s:=s||', 90); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2395, 1,2211,   3.3,110); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2396, 1,3106,    44,150); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2397, 1,2976,    52,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,l';

s:=s||'ine_item_id,product_id,unit_price,quantity) VALUES (2398, 1,2471, 482.9,  5); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 1,2289,    44,120); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2400, 1,2976,    52,  4);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VAL';

s:=s||'UES (2401, 1,2492,    41,  4);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2402, 1,2536,    75,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2403, 1,2522,    44,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2404, 1,2721,    85,  6);'||chr(10)||
'INSERT INTO oehr_o';

s:=s||'rder_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2405, 1,2638,   137,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2406, 1,2721,    85,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2407, 1,2721,    85,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit';

s:=s||'_price,quantity) VALUES (2408, 1,2751,    61,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2409, 1,2810,     6,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2410, 1,2976,    46, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 1,3082,    81,  ';

s:=s||'2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2412, 1,3106,    46,170); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2413, 1,3108,    77,200); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2414, 1,3208,   1.1,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line';

s:=s||'_item_id,product_id,unit_price,quantity) VALUES (2415, 1,2751,    62,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2416, 1,2870,   4.4, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2417, 1,2870,   4.4,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES';

s:=s||' (2418, 1,3082,    75, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419, 1,3106,    46,150); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 1,3106,    46,110); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421, 1,3106,    46,160); '||chr(10)||
'INSERT INTO oehr_';

s:=s||'order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2422, 1,3106,    46, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2423, 1,3220,    39,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2424, 1,3350,   693, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,un';

s:=s||'it_price,quantity) VALUES (2425, 1,3501, 492.8,  3); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2426, 1,3193,   2.2,  6); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2427, 1,2430,   173, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 1,3106,    42';

s:=s||',  7);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2429, 1,3106,    42,200); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2430, 1,3350,   693,  6); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2431, 1,3097,   2.2,  3); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,l';

s:=s||'ine_item_id,product_id,unit_price,quantity) VALUES (2432, 1,2976,    49,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2433, 1,1910,    13,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2434, 1,2211,   3.3, 81); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALU';

wwv_flow_api.create_install_script(
  p_id => 313869426850630610 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'seed orders',
  p_sequence=> 80,
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'ES (2435, 1,2289,    48, 35); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2436, 1,3208,   1.1,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2437, 1,2423,    83,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2438, 1,2995,    69,  3);'||chr(10)||
'INSERT INTO oehr_';

s:=s||'order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2439, 1,1797, 316.8,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440, 1,2289,    48, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2441, 1,2536,    80,  9);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,un';

s:=s||'it_price,quantity) VALUES (2442, 1,2402,   127, 26); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2443, 1,3106,    44,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2444, 1,3117,    36,110); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2445, 1,2270,    66,';

s:=s||'  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2446, 1,2289,    48, 47); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447, 1,2264, 199.1, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2448, 1,3106,    44,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,lin';

s:=s||'e_item_id,product_id,unit_price,quantity) VALUES (2449, 1,2522,    43,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2450, 1,3191,   1.1,  4); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2451, 1,1910,    13,  9);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES';

s:=s||' (2452, 1,3117,    38,140); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2453, 1,2492,    43,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2454, 1,2289,    43,120); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2455, 1,2471, 482.9,  3); '||chr(10)||
'INSERT INTO oehr_o';

s:=s||'rder_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2456, 1,2522,    40,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2457, 1,3108,    72, 36); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2458, 1,3117,    38,140); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,uni';

s:=s||'t_price,quantity) VALUES (2354, 2,3114,  96.8, 43); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356, 2,2274, 148.5, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2358, 2,1782,   125,  4); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2361, 2,2299,    76,';

s:=s||'180); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362, 2,2299,    76,160); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2363, 2,2272,   129,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365, 2,2293,    99, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,l';

s:=s||'ine_item_id,product_id,unit_price,quantity) VALUES (2368, 2,3110,    42, 60); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369, 2,3155,    43,  1);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2372, 2,3108,    74,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALU';

s:=s||'ES (2373, 2,1825,    24,  1);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2374, 2,2423,    78,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 2,3112,    71, 84); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376, 2,2276, 236.5,  4); '||chr(10)||
'INSERT INTO oehr_';

s:=s||'order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2378, 2,2412,    95,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380, 2,3108,    75, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2381, 2,3124,    77, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,un';

s:=s||'it_price,quantity) VALUES (2382, 2,3110,    43, 64); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2384, 2,2299,    71, 48); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2386, 2,2334,   3.3,  5); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2388, 2,2293,    94';

s:=s||', 90); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389, 2,3112,    73, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2390, 2,1912,    14,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2391, 2,1791, 262.9,  3); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,l';

s:=s||'ine_item_id,product_id,unit_price,quantity) VALUES (2392, 2,3112,    73, 57); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393, 2,3060,   295,  2); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394, 2,3123,    77, 36); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VA';

s:=s||'LUES (2396, 2,3108,    76, 75); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 2,2293,    94, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2400, 2,2982,    41,  1);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2401, 2,2496, 268.4,  3); '||chr(10)||
'INSERT INTO oe';

s:=s||'hr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2406, 2,2725,   3.3,  4); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2408, 2,2761,    26,  1);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 2,3086,   208,  2); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id';

s:=s||',unit_price,quantity) VALUES (2412, 2,3114,    98, 68); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2413, 2,3112,    75, 40); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2414, 2,3216,    30,  7);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2416, 2,2878,   3';

s:=s||'40,  1); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2418, 2,3090,   187, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419, 2,3114,    99, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 2,3110,    46, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_i';

s:=s||'d,line_item_id,product_id,unit_price,quantity) VALUES (2421, 2,3108,    78,160); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2422, 2,3117,    41,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2423, 2,3224,    32,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) V';

s:=s||'ALUES (2424, 2,3354,   541,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2425, 2,3511,     9,  2); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2427, 2,2439,   121,  1); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 2,3108,    76,  1);'||chr(10)||
'INSERT INTO o';

s:=s||'ehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2429, 2,3108,    76, 40); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2430, 2,3353, 454.3,  5); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2431, 2,3106,    48,  1);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_i';

s:=s||'d,unit_price,quantity) VALUES (2432, 2,2982,    43,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2435, 2,2299,    75,  4);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2436, 2,3209,    13,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2437, 2,2430, 157.';

s:=s||'3,  4); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2438, 2,3000,  1748,  3); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2439, 2,1806,    45,  4);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440, 2,2293,    98,  2);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,l';

s:=s||'ine_item_id,product_id,unit_price,quantity) VALUES (2441, 2,2537, 193.6,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2442, 2,2410, 350.9, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2443, 2,3114,   101,  2); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VA';

s:=s||'LUES (2444, 2,3127, 488.4, 88); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2445, 2,2278,    49,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447, 2,2266,   297, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2448, 2,3114,    99,  0);'||chr(10)||
'INSERT INTO oeh';

s:=s||'r_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2450, 2,3193,   2.2,  3); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2454, 2,2293,    99,  0);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2457, 2,3123,    79, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,';

s:=s||'unit_price,quantity) VALUES (2458, 2,3123,    79,112); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354, 3,3123,    79, 47); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2361, 3,2308,    53,182); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362, 3,2311,    ';

s:=s||'93,164); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365, 3,2302, 133.1, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2368, 3,3117,    38, 62); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369, 3,3163,    32,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id';

s:=s||',line_item_id,product_id,unit_price,quantity) VALUES (2372, 3,3110,    42,  7);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 3,3117,    38, 85); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2378, 3,2414, 438.9,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) V';

s:=s||'ALUES (2380, 3,3117,    38, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2381, 3,3133,    44, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 3,3114,   100, 65); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389, 3,3123,    80, 21); '||chr(10)||
'INSERT INTO ';

s:=s||'oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2391, 3,1797,   348,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2392, 3,3117,    38, 58); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393, 3,3064,  1017,  5); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product';

s:=s||'_id,unit_price,quantity) VALUES (2394, 3,3124,    82, 39); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2396, 3,3110,    44, 79); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 3,2299,    76, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2400, 3,2986,';

s:=s||'   123,  4); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2410, 2,2982,    40,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 3,3097,   2.2,  6); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2412, 3,3123,  71.5, 68); '||chr(10)||
'INSERT INTO oehr_order_items(orde';

s:=s||'r_id,line_item_id,product_id,unit_price,quantity) VALUES (2413, 3,3117,    35, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2414, 3,3220,    41,  9);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2418, 3,3097,   2.2, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantit';

s:=s||'y) VALUES (2419, 3,3123,  71.5, 48); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 3,3114,   101, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421, 3,3112,    72,164); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2422, 3,3123,  71.5,  5); '||chr(10)||
'INSERT I';

s:=s||'NTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2424, 3,3359,   111, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2425, 3,3515,   1.1,  4); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 3,3114,   101,  5); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,pro';

s:=s||'duct_id,unit_price,quantity) VALUES (2429, 3,3110,    45, 43); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2430, 3,3359,   111, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2431, 3,3114,   101,  3); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2436, 3,3';

s:=s||'216,    30,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2439, 3,1820,    54,  9);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440, 3,2302,   150,  2); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2442, 3,2418,    60, 23); '||chr(10)||
'INSERT INTO oehr_order_items(o';

s:=s||'rder_id,line_item_id,product_id,unit_price,quantity) VALUES (2444, 3,3133,    43, 90); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2450, 3,3197,    44,  5);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2454, 3,2299,    71,  3);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quant';

s:=s||'ity) VALUES (2457, 3,3127, 488.4, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2458, 3,3127, 488.4,114); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354, 4,3129,    41, 47); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2361, 4,2311,  86.9,185); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362, 4,2316,    22,168); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365, 4,2308,    56, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366, 4,2373,     6,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,p';

s:=s||'roduct_id,unit_price,quantity) VALUES (2367, 4,2302,   147, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369, 4,3165,    34, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2371, 4,2293,    96,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 4,';

s:=s||'3127, 488.4, 86); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2377, 4,2302,   147,119); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2378, 4,2417,    27, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2379, 4,3114,    98, 14); '||chr(10)||
'INSERT INTO oehr_order_item';

s:=s||'s(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380, 4,3127, 488.4, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2381, 4,3139,    20, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 4,3117,    35, 66); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,';

s:=s||'quantity) VALUES (2383, 4,2418,    56, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2386, 3,2340,    71, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389, 4,3129,    46, 22); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2391, 4,1799, 961.4, 10); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393, 4,3069,   385,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394, 4,3129,    46, 41); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2396, 4,3114,   100, 83); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item';

s:=s||'_id,product_id,unit_price,quantity) VALUES (2397, 4,2986,   120,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 4,2302,   149, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2410, 3,2986,   120,  6); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (24';

s:=s||'11, 4,3099,   3.3,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2412, 4,3127,   492, 72); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2413, 4,3127,   492, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2414, 4,3234,    39, 11); '||chr(10)||
'INSERT INTO oehr_orde';

s:=s||'r_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 4,3123,    79, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421, 4,3117,    41,165); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2426, 4,3216,    30, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_';

s:=s||'price,quantity) VALUES (2428, 4,3117,    41,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2429, 4,3123,    79, 46); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2430, 4,3362,    94, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2431, 4,3117,    41,  7';

s:=s||');'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2432, 3,2986,   122,  5); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2436, 4,3224,    32,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2439, 4,1822,1433.3, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_i';

s:=s||'tem_id,product_id,unit_price,quantity) VALUES (2442, 4,2422,   144, 25); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2443, 3,3124,    82,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2444, 4,3139,    21, 93); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (';

s:=s||'2447, 3,2272,   121, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2458, 4,3134,    17,115); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354, 5,3139,    21, 48); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2355, 4,2308,    57,185); '||chr(10)||
'INSERT INTO oehr_or';

s:=s||'der_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356, 5,2293,    98, 40); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2358, 5,1797, 316.8, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2359, 5,2359,   249,  1); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,uni';

s:=s||'t_price,quantity) VALUES (2361, 5,2316,    22,187); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365, 5,2311,    95, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366, 5,2382, 804.1, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2368, 4,3123,    81,';

s:=s||' 70); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2372, 4,3123,    81, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2374, 5,2449,    78, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 5,3133,    45, 88); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,l';

s:=s||'ine_item_id,product_id,unit_price,quantity) VALUES (2376, 5,2293,    99, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2377, 5,2311,    95,121); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2378, 5,2423,    79, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VA';

s:=s||'LUES (2380, 5,3133,    46, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2381, 5,3143,    15, 48); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 5,3123,    79, 71); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2383, 5,2422,   146, 46); '||chr(10)||
'INSERT INTO o';

s:=s||'ehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2385, 5,2302, 133.1, 87); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2388, 5,2308,    56, 96); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2391, 5,1808,    55, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_';

s:=s||'id,unit_price,quantity) VALUES (2393, 5,3077, 260.7,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394, 5,3133,    46, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 5,2308,    56, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2408, 5,2783, ';

s:=s||'   10, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2410, 4,2995,    68,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 5,3101,    73,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2412, 5,3134,    18, 75); '||chr(10)||
'INSERT INTO oehr_order_items(order_';

s:=s||'id,line_item_id,product_id,unit_price,quantity) VALUES (2413, 5,3129,    46, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 5,3127,   496, 22); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421, 5,3123,    80,168); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity';

s:=s||') VALUES (2422, 4,3127,   496,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2427, 5,2457,   4.4,  6); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 5,3123,    80,  8);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2429, 5,3127,   497, 49); '||chr(10)||
'INSERT INT';

s:=s||'O oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2431, 5,3127,   498,  9); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2435, 5,2311,  86.9,  8); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2442, 5,2430,   173, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,produ';

s:=s||'ct_id,unit_price,quantity) VALUES (2444, 5,3140,    19, 95); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447, 4,2278,    50, 25); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354, 6,3143,    16, 53); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2355, 5,231';

s:=s||'1,  86.9,188); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356, 6,2299,    72, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2358, 6,1803,    55, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365, 6,2316,    22, 34); '||chr(10)||
'INSERT INTO oehr_order_items(o';

s:=s||'rder_id,line_item_id,product_id,unit_price,quantity) VALUES (2366, 6,2394, 116.6, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2367, 5,2308,    54, 39); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2368, 5,3127,   496, 70); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,qua';

s:=s||'ntity) VALUES (2371, 5,2299,    73, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2372, 5,3127,   496, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 6,3134,    17, 90); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376, 6,2299,    73, 17); '||chr(10)||
'INSE';

s:=s||'RT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2378, 6,2424, 217.8, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380, 6,3140,    20, 30); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 6,3127,   496, 71); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id';

s:=s||',product_id,unit_price,quantity) VALUES (2383, 6,2430,   174, 50); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2384, 5,2316,    21, 58); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2391, 6,1820,    52, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2392,';

s:=s||' 6,3124,    77, 63); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393, 6,3082,    78, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394, 6,3134,    18, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 6,2311,  86.9, 20); '||chr(10)||
'INSERT INTO oehr_order_i';

s:=s||'tems(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2400, 6,2999,   880, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 6,3106,    45, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2412, 6,3139,    20, 79); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_pri';

s:=s||'ce,quantity) VALUES (2418, 6,3110,    45, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419, 4,3129,    43, 57); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421, 6,3129,    43,172); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2422, 5,3133,    46, 11);';

s:=s||' '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2423, 5,3245, 214.5, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2427, 6,2464,    66,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 6,3127,   498, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_it';

wwv_flow_api.append_to_install_script(
  p_id => 313869426850630610 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'em_id,product_id,unit_price,quantity) VALUES (2429, 6,3133,    46, 52); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2431, 6,3129,    44, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2434, 6,2236, 949.3, 84); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (';

s:=s||'2435, 6,2316,    21, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440, 6,2311,  86.9,  7); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2442, 6,2439, 115.5, 30); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2444, 6,3143,    15, 97); '||chr(10)||
'INSERT INTO oehr_or';

s:=s||'der_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2445, 5,2293,    97, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2448, 5,3133,    42, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452, 6,3139,    20, 10); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,uni';

s:=s||'t_price,quantity) VALUES (2354, 7,3150,    17, 58); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2355, 6,2322,    19,188); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356, 7,2308,    58, 47); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2357, 7,2245,   462,';

s:=s||' 26); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2358, 7,1808,    55, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362, 7,2326,   1.1,173); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2363, 7,2299,    74, 25); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,l';

s:=s||'ine_item_id,product_id,unit_price,quantity) VALUES (2365, 7,2319,    24, 38); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366, 7,2395,   120, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2368, 6,3129,    42, 72); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VA';

s:=s||'LUES (2372, 6,3134,    17, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 7,3143,    15, 93); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376, 7,2302, 133.1, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2379, 7,3127, 488.4, 23); '||chr(10)||
'INSERT INTO o';

s:=s||'ehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380, 7,3143,    15, 31); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 7,3129,    42, 76); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2383, 7,2439, 115.5, 54); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_';

s:=s||'id,unit_price,quantity) VALUES (2384, 6,2322,    22, 59); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2387, 7,2243, 332.2, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2391, 7,1822,1433.3, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2392, 7,3133, ';

s:=s||'   45, 66); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393, 7,3086,   211, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394, 7,3140,    19, 48); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2395, 7,2243, 332.2, 27); '||chr(10)||
'INSERT INTO oehr_order_items(orde';

s:=s||'r_id,line_item_id,product_id,unit_price,quantity) VALUES (2397, 7,2999,   880, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 7,2316,    22, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2400, 7,3003,2866.6, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quanti';

s:=s||'ty) VALUES (2412, 7,3143,    16, 80); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2414, 7,3246, 212.3, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419, 5,3133,    45, 61); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 6,3133,    48, 29); '||chr(10)||
'INSERT ';

s:=s||'INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2423, 6,3246, 212.3, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2427, 7,2470,    76,  6);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 7,3133,    48, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,pro';

s:=s||'duct_id,unit_price,quantity) VALUES (2429, 7,3139,    21, 54); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2432, 6,2999,   880, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2434, 7,2245,   462, 86); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2435, 7,2';

s:=s||'323,    18, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2436, 7,3245, 214.5, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2437, 7,2457,   4.4, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440, 7,2322,    23, 10); '||chr(10)||
'INSERT INTO oehr_order_items';

s:=s||'(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2443, 6,3139,    20, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2444, 7,3150,    17,100); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2445, 6,2299,    72, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,q';

s:=s||'uantity) VALUES (2448, 6,3134,    17, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2450, 6,3216,    29, 11); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452, 7,3143,    15, 12); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2454, 6,2308,    55, 12); '||chr(10)||
'IN';

s:=s||'SERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2455, 6,2496, 268.4, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2456, 7,2537, 193.6, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354, 8,3163,    30, 61); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_';

s:=s||'id,product_id,unit_price,quantity) VALUES (2355, 7,2323,    17,190); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356, 8,2311,    95, 51); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2357, 8,2252, 788.7, 26); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (236';

s:=s||'1, 8,2326,   1.1,194); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362, 8,2334,   3.3,177); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2363, 8,2308,    57, 26); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365, 8,2322,    19, 43); '||chr(10)||
'INSERT INTO oehr_order';

s:=s||'_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366, 8,2400,   418, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369, 7,3170, 145.2, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2372, 7,3143,    15, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_p';

s:=s||'rice,quantity) VALUES (2374, 8,2467,    79, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 8,3150,    17, 93); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376, 8,2311,    95, 25); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380, 8,3150,    17, 33';

s:=s||'); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 8,3139,    21, 79); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2384, 7,2330,   1.1, 61); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2385, 8,2311,  86.9, 96); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line';

s:=s||'_item_id,product_id,unit_price,quantity) VALUES (2387, 8,2245,   462, 22); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389, 7,3143,    15, 30); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2390, 8,1948, 470.8, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUE';

s:=s||'S (2392, 8,3139,    21, 68); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393, 8,3087, 108.9, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2395, 8,2252, 788.7, 30); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2397, 8,3000,1696.2, 16); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 8,2326,   1.1, 27); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2407, 8,2752,    86, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 7,3112,    72, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,';

s:=s||'unit_price,quantity) VALUES (2414, 8,3253, 206.8, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 7,3140,    19, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2423, 7,3251,    26, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2426, 8,3234,    ';

s:=s||'34, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 8,3143,    16, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2434, 8,2252, 788.7, 87); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2435, 8,2334,   3.3, 14); '||chr(10)||
'INSERT INTO oehr_order_items(order_i';

s:=s||'d,line_item_id,product_id,unit_price,quantity) VALUES (2436, 8,3250,    27, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2437, 8,2462,    76, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440, 8,2330,   1.1, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity)';

s:=s||' VALUES (2443, 7,3143,    15, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2444, 8,3155,    43,104); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2448, 7,3139,    20, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2450, 7,3220,    41, 14); '||chr(10)||
'INSERT INT';

s:=s||'O oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2451, 7,1948, 470.8, 22); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452, 8,3150,    17, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2454, 7,2316,    21, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,produ';

s:=s||'ct_id,unit_price,quantity) VALUES (2457, 8,3150,    17, 27); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2458, 7,3143,    15,129); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354, 9,3165,    37, 64); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2355, 8,232';

s:=s||'6,   1.1,192); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356, 9,2316,    22, 55); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2357, 9,2257, 371.8, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2360, 8,2093,   7.7, 42); '||chr(10)||
'INSERT INTO oehr_order_items(o';

s:=s||'rder_id,line_item_id,product_id,unit_price,quantity) VALUES (2361, 9,2334,   3.3,198); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362, 9,2339,    25,179); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2363, 9,2311,  86.9, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,qua';

s:=s||'ntity) VALUES (2364, 8,1948, 470.8, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365, 9,2326,   1.1, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366, 9,2406, 195.8, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2367, 8,2322,    22, 45); '||chr(10)||
'INSE';

s:=s||'RT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369, 8,3176, 113.3, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2371, 8,2316,    21, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375, 9,3155,    45, 98); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id';

s:=s||',product_id,unit_price,quantity) VALUES (2376, 9,2316,    21, 27); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2377, 8,2319,    25,131); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380, 9,3155,    45, 33); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2381,';

s:=s||' 8,3163,    35, 55); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382, 9,3143,    15, 82); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2385, 9,2319,    25, 97); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2386, 8,2365,    77, 27); '||chr(10)||
'INSERT INTO oehr_order_i';

s:=s||'tems(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2387, 9,2252, 788.7, 27); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389, 8,3155,    46, 33); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2392, 9,3150,    18, 72); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_pri';

s:=s||'ce,quantity) VALUES (2393, 9,3091,   278, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2396, 9,3140,    19, 93); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399, 9,2330,   1.1, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2406, 8,2761,    26, 19);';

s:=s||' '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2407, 9,2761,    26, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2410, 7,3003,2866.6, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 8,3123,    75, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_i';

s:=s||'tem_id,product_id,unit_price,quantity) VALUES (2414, 9,3260,    50, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420, 8,3143,    15, 39); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2422, 8,3150,    17, 25); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES ';

s:=s||'(2423, 8,3258,    78, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428, 9,3150,    17, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2429, 8,3150,    17, 55); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2434, 9,2254, 408.1, 92); '||chr(10)||
'INSERT INTO oehr_o';

s:=s||'rder_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2435, 9,2339,    25, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2436, 9,3256,    36, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2437, 9,2464,    64, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,un';

s:=s||'it_price,quantity) VALUES (2440, 9,2334,   3.3, 15); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2442, 9,2459, 624.8, 40); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2443, 8,3150,    18, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447, 8,2293,    97';

s:=s||', 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2448, 8,3143,    16, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2450, 8,3224,    32, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452, 9,3155,    44, 13); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,';

s:=s||'line_item_id,product_id,unit_price,quantity) VALUES (2454, 8,2323,    18, 16); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2457, 9,3155,    44, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354,10,3167,    51, 68); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) V';

s:=s||'ALUES (2355, 9,2330,   1.1,197); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2356,10,2323,    18, 55); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2357,10,2262,    95, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2359, 8,2370,    91, 17); '||chr(10)||
'INSERT INTO ';

s:=s||'oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2363,10,2319,    24, 31); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365,10,2335,    97, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366,10,2409, 194.7, 22); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product';

s:=s||'_id,unit_price,quantity) VALUES (2367, 9,2326,   1.1, 48); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2368, 9,3143,    16, 75); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369, 9,3187,   2.2, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2371, 9,2323,';

s:=s||'    17, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375,10,3163,    30, 99); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376,10,2319,    25, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2377, 9,2326,   1.1,132); '||chr(10)||
'INSERT INTO oehr_order_items(ord';

s:=s||'er_id,line_item_id,product_id,unit_price,quantity) VALUES (2379,10,3139,    21, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380,10,3163,    32, 36); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2383,10,2457,   4.4, 62); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quant';

s:=s||'ity) VALUES (2386, 9,2370,    90, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2387,10,2253, 354.2, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2388,10,2330,   1.1,105); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2392,10,3155,    49, 77); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393,10,3099,   3.3, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394,10,3155,    49, 61); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2395, 9,2255, 690.8, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,p';

s:=s||'roduct_id,unit_price,quantity) VALUES (2396,10,3150,    17, 93); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2399,10,2335,   100, 33); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411, 9,3124,    84, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419, 8';

s:=s||',3150,    17, 69); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421, 9,3143,    15,176); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2422, 9,3155,    43, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2434,10,2257, 371.8, 94); '||chr(10)||
'INSERT INTO oehr_order_ite';

s:=s||'ms(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2435,10,2350,2341.9, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440,10,2337, 270.6, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2442,10,2467,    80, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price';

s:=s||',quantity) VALUES (2443, 9,3155,    43, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2445, 9,2311,    95, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2446, 9,2326,   1.1, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447, 9,2299,    76, 35); '||chr(10)||
'';

s:=s||'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452,10,3165,    34, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2454, 9,2334,   3.3, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354,11,3170, 145.2, 70); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_ite';

s:=s||'m_id,product_id,unit_price,quantity) VALUES (2355,10,2339,    25,199); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2357,11,2268,    75, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2359, 9,2373,     6, 17);'||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (23';

s:=s||'63,11,2323,    18, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365,11,2339,    25, 50); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366,11,2415, 339.9, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2367,10,2330,   1.1, 52); '||chr(10)||
'INSERT INTO oehr_orde';

s:=s||'r_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2368,10,3155,    45, 75); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369,10,3193,   2.2, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2371,10,2334,   3.3, 26); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_';

s:=s||'price,quantity) VALUES (2372,10,3163,    30, 30); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375,11,3165,    36,103); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376,11,2326,   1.1, 33); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2377,10,2330,   1.1,13';

s:=s||'6); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2379,11,3140,    19, 35); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380,11,3167,    52, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2383,11,2462,    75, 63); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,lin';

s:=s||'e_item_id,product_id,unit_price,quantity) VALUES (2386,10,2375,    73, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2395,10,2264, 199.1, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2396,11,3155,    47, 98); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALU';

s:=s||'ES (2398,11,2537, 193.6, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411,10,3127, 488.4, 18); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2413,11,3155,    47, 62); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2418,11,3140,    20, 31); '||chr(10)||
'INSERT INTO oeh';

s:=s||'r_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419, 9,3155,    47, 72); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421,10,3150,    17,176); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440,11,2339,    25, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id';

s:=s||',unit_price,quantity) VALUES (2444,11,3165,    37,112); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2445,10,2319,    25, 27); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2446,10,2330,   1.1, 36); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447,10,2302, 13';

s:=s||'3.1, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452,11,3170, 145.2, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354,12,3176, 113.3, 72); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2359,10,2377,    96, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_';

s:=s||'id,line_item_id,product_id,unit_price,quantity) VALUES (2363,12,2326,   1.1, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2365,12,2340,    72, 54); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2366,12,2419,    69, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity';

s:=s||') VALUES (2367,11,2335,  91.3, 54); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2371,11,2339,    25, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2372,11,3167,    54, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375,12,3171,   132,107); '||chr(10)||
'INSERT IN';

s:=s||'TO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2376,12,2334,   3.3, 36); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2378,12,2457,   4.4, 25); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380,12,3176, 113.3, 40); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,prod';

s:=s||'uct_id,unit_price,quantity) VALUES (2381,11,3176, 113.3, 62); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382,12,3163,    29, 89); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2385,12,2335,  91.3,106); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2386,11,23';

s:=s||'78, 271.7, 33); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389,11,3165,    34, 43); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2395,11,2268,    71, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2396,12,3163,    29,100); '||chr(10)||
'INSERT INTO oehr_order_items(';

s:=s||'order_id,line_item_id,product_id,unit_price,quantity) VALUES (2398,12,2594,     9, 27); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2410,10,3051,    12, 21); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2411,11,3133,    43, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,qu';

wwv_flow_api.append_to_install_script(
  p_id => 313869426850630610 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'antity) VALUES (2412,12,3163,    30, 92); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2413,12,3163,    30, 66); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419,10,3165,    35, 76); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420,11,3163,    30, 45); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2422,10,3163,    30, 35); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2426,12,3248, 212.3, 26); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2427,12,2496, 268.4, 19); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_i';

s:=s||'d,product_id,unit_price,quantity) VALUES (2428,12,3170, 145.2, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2429,11,3163,    30, 63); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440,12,2350,2341.9, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2444';

s:=s||',12,3172,    37,112); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2445,11,2326,   1.1, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2446,11,2337, 270.6, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447,11,2308,    54, 40); '||chr(10)||
'INSERT INTO oehr_order_';

s:=s||'items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452,12,3172,    37, 20); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2457,12,3170, 145.2, 42); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2354,13,3182,    61, 77); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_pr';

s:=s||'ice,quantity) VALUES (2357,12,2276, 236.5, 38); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2359,11,2380,   5.5, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2361,12,2359,   248,208); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2362,12,2359,   248,189)';

s:=s||'; '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2363,13,2334,   3.3, 42); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2367,12,2350,2341.9, 54); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2369,11,3204,   123, 34); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_';

s:=s||'item_id,product_id,unit_price,quantity) VALUES (2371,12,2350,2341.9, 32); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2372,12,3170, 145.2, 36); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2375,13,3176,   120,109); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES';

s:=s||' (2378,13,2459, 624.8, 25); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2380,13,3187,   2.2, 40); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2381,12,3183,    47, 63); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2382,13,3165,    37, 92); '||chr(10)||
'INSERT INTO oehr_';

s:=s||'order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2384,12,2359,   249, 77); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2385,13,2350,2341.9,109); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2386,12,2394, 116.6, 36); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,u';

s:=s||'nit_price,quantity) VALUES (2387,13,2268,    75, 42); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2388,13,2350,2341.9,112); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2389,12,3167,    52, 47); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2392,13,3165,    4';

s:=s||'0, 81); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2393,13,3108,  69.3, 30); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2394,13,3167,    52, 68); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2395,12,2270,    64, 41); '||chr(10)||
'INSERT INTO oehr_order_items(order_id';

s:=s||',line_item_id,product_id,unit_price,quantity) VALUES (2399,13,2359, 226.6, 38); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2404,13,2808,     0, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2406,12,2782,    62, 31); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) ';

s:=s||'VALUES (2411,12,3143,    15, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2412,13,3167,    54, 94); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2417,13,2976,    51, 37); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2418,12,3150,    17, 37); '||chr(10)||
'INSERT INTO';

s:=s||' oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2419,11,3167,    54, 81); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2420,12,3171,   132, 47); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2421,11,3155,    43,185); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,produc';

s:=s||'t_id,unit_price,quantity) VALUES (2422,11,3167,    54, 39); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2423,12,3290,    65, 33); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2426,13,3252,    25, 29); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2427,13,2522';

s:=s||',    40, 22); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2428,13,3173,    86, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2429,12,3165,    36, 67); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2430,13,3501, 492.8, 43); '||chr(10)||
'INSERT INTO oehr_order_items(or';

s:=s||'der_id,line_item_id,product_id,unit_price,quantity) VALUES (2434,13,2268,    75,104); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2435,13,2365,    75, 33); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2436,13,3290,    63, 24); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quan';

s:=s||'tity) VALUES (2437,13,2496, 268.4, 35); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2440,13,2359, 226.6, 28); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2443,12,3165,    36, 31); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2444,13,3182,    63,115); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2446,12,2350,2341.9, 39); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2447,12,2311,    93, 44); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2452,13,3173,    80, 23); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,';

s:=s||'product_id,unit_price,quantity) VALUES (2455,12,2536,    75, 54); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2457,13,3172,    36, 45); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2458,12,3163,    32,142); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2355,1';

s:=s||'3,2359, 226.6,204); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2357,13,2289,    48, 41); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2359,12,2381,    97, 17); '||chr(10)||
'INSERT INTO oehr_order_items(order_id,line_item_id,product_id,unit_price,quantity) VALUES (2361,13,2365,    76,209); '||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(1733,1,106); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1734,1,106); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,1,106); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,1,107); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,1,108); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,1,108); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,1,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,1,131); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(2319,1,117); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,1,118); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,1,118); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,1,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,1,126); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,1,126); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2380,1,127); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,1,128); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(2408,1,131); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2418,1,133); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,1,133); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,1,89); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,1,132); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,1,170); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2879,1,170); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,1,175); '||chr(10)||
'INSERT INTO oehr_';

s:=s||'inventories VALUES(3003,1,175); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,1,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,1,205); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3124,1,209); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,1,196); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3139,1,197); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,1,197); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,1,197); '||chr(10)||
'INSERT INTO oehr_';

s:=s||'inventories VALUES(3204,1,221); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,1,222); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3301,1,222); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,1,251); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1733,2,96); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1734,2,96); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,2,96); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,2,96); '||chr(10)||
'INSERT INTO oehr_inve';

s:=s||'ntories VALUES(1739,2,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1740,2,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1742,2,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,2,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,2,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1749,2,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1750,2,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1755,2,99); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(1763,2,100); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1768,2,101); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1769,2,101); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1770,2,104); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1772,2,105); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1774,2,114); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1775,2,114); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1778,2,115); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(1779,2,115); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1780,2,115); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1781,2,106); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1787,2,107); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1788,2,107); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1794,2,117); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1799,2,118); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1801,2,118); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(1803,2,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1804,2,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1805,2,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1806,2,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1808,2,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1820,2,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1822,2,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1825,2,122); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(2005,2,117); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2058,2,110); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2243,2,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2245,2,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2255,2,154); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2257,2,154); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2259,2,154); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2260,2,155); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(2261,2,155); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2262,2,155); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2264,2,111); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2266,2,111); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2270,2,112); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2274,2,113); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2276,2,113); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,2,113); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(2316,2,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2319,2,167); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,2,167); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,2,167); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2335,2,91); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2350,2,94); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2351,2,94); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2359,2,173); '||chr(10)||
'INSERT INTO oehr_inventories VAL';

s:=s||'UES(2370,2,178); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2371,2,81); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,2,178); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2374,2,178); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2375,2,178); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,2,179); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2378,2,179); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2380,2,179); '||chr(10)||
'INSERT INTO oehr_inventories VALU';

s:=s||'ES(2387,2,180); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2394,2,181); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2395,2,182); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2396,2,182); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2402,2,183); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2403,2,183); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2404,2,183); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2406,2,183); '||chr(10)||
'INSERT INTO oehr_inventories VALU';

s:=s||'ES(2408,2,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2409,2,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2410,2,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2411,2,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2414,2,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2415,2,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2416,2,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2417,2,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES';

s:=s||'(2418,2,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,2,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2422,2,89); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2423,2,89); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2424,2,186); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2439,2,191); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2449,2,93); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2452,2,94); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(245';

s:=s||'7,2,194); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2462,2,95); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2464,2,96); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2467,2,96); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2468,2,96); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2470,2,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2471,2,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2492,2,101); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2493,2,10';

s:=s||'1); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2494,2,101); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,2,120); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2752,2,138); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2779,2,128); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,2,158); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2879,2,158); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,2,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,2,17';

s:=s||'8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,2,178); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3054,2,171); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3057,2,172); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3060,2,172); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3061,2,173); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3065,2,173); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3071,2,174); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3072,2,17';

s:=s||'4); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3077,2,175); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3082,2,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3083,2,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3086,2,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3088,2,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3090,2,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3091,2,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,2,19';

s:=s||'3); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3108,2,194); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3110,2,195); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3112,2,195); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3117,2,196); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3124,2,197); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3129,2,198); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,2,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3139,2,18';

s:=s||'5); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,2,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,2,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3165,2,189); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3167,2,189); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3170,2,212); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3171,2,213); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3172,2,213); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3173,2,21';

s:=s||'3); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3175,2,213); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3176,2,213); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3177,2,214); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3178,2,214); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3179,2,214); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3182,2,214); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3183,2,214); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3204,2,20';

s:=s||'9); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3246,2,225); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3247,2,225); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3248,2,225); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3250,2,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3251,2,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3252,2,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3253,2,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3255,2,22';

s:=s||'6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3256,2,227); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3257,2,227); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3258,2,227); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3260,2,227); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,2,210); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3301,2,210); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3331,2,215); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3334,2,21';

s:=s||'6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3337,2,264); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3350,2,232); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3354,2,219); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3355,2,219); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3359,2,220); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3361,2,244); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3362,2,244); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,2,23';

s:=s||'9); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3400,2,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3501,2,353); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3502,2,267); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3503,2,267); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1729,3,100); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1733,3,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1734,3,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,3,89);';

s:=s||' '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,3,89); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,3,90); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,3,90); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1912,3,112); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1940,3,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,3,101); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,3,107); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2319,3,118); '||chr(10)||
'IN';

s:=s||'SERT INTO oehr_inventories VALUES(2322,3,118); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,3,118); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2326,3,94); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2340,3,69); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2365,3,73); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,3,126); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,3,126); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,3,127); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_inventories VALUES(2380,3,127); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,3,131); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2408,3,135); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2418,3,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,3,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,3,142); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2596,3,87); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2631,3,93); '||chr(10)||
'INSERT ';

s:=s||'INTO oehr_inventories VALUES(2638,3,108); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2722,3,107); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,3,146); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2879,3,146); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,3,245); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,3,246); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,3,246); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,3,181); '||chr(10)||
'INSERT ';

s:=s||'INTO oehr_inventories VALUES(3124,3,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,3,272); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3139,3,273); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,3,273); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,3,273); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3189,3,181); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3191,3,181); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3193,3,181); '||chr(10)||
'INSERT ';

s:=s||'INTO oehr_inventories VALUES(3204,3,197); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,3,304); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3301,3,304); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,3,227); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1733,4,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1734,4,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,4,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,4,64); '||chr(10)||
'INSERT INTO';

s:=s||' oehr_inventories VALUES(1739,4,64); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1740,4,67); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1742,4,67); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,4,68); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,4,68); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1749,4,68); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1750,4,68); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1755,4,69); '||chr(10)||
'INSERT INTO oehr_in';

s:=s||'ventories VALUES(1763,4,70); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1768,4,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1769,4,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1770,4,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1772,4,72); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1781,4,73); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1787,4,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1788,4,74); '||chr(10)||
'INSERT INTO oehr_inventorie';

s:=s||'s VALUES(2058,4,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2243,4,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2245,4,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2255,4,76); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2257,4,76); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2259,4,76); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2260,4,76); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2261,4,76); '||chr(10)||
'INSERT INTO oehr_inventories VALUES';

s:=s||'(2262,4,77); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2264,4,87); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2266,4,87); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2270,4,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2274,4,89); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2276,4,89); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,4,89); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,4,95); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2319,4,';

s:=s||'86); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,4,86); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,4,86); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2359,4,95); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,4,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,4,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2374,4,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2375,4,97); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,4,98); '||chr(10)||
'IN';

s:=s||'SERT INTO oehr_inventories VALUES(2378,4,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2380,4,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,4,99); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2394,4,100); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2395,4,100); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2396,4,101); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2402,4,102); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2403,4,102); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_inventories VALUES(2404,4,102); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2406,4,102); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2408,4,103); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2409,4,103); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2410,4,103); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2411,4,103); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2414,4,103); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2415,4,104); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_inventories VALUES(2418,4,104); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,4,104); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2424,4,105); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2439,4,107); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,4,110); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,4,96); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2752,4,114); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,4,134); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_inventories VALUES(2879,4,134); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,4,210); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,4,211); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,4,211); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3054,4,219); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3057,4,219); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3060,4,223); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3061,4,223); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_inventories VALUES(3065,4,223); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3071,4,224); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3072,4,225); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3077,4,225); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3082,4,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3083,4,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3086,4,227); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3088,4,227); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_inventories VALUES(3090,4,227); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3091,4,228); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,4,169); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3108,4,170); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3110,4,171); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3112,4,171); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3117,4,172); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3124,4,173); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_inventories VALUES(3129,4,174); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,4,234); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3139,4,235); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,4,235); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,4,236); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3204,4,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,4,266); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3301,4,266); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_inventories VALUES(3331,4,271); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3334,4,272); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3350,4,208); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3354,4,275); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3355,4,275); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3359,4,276); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,4,215); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3400,4,282); '||chr(10)||
'INSERT';

s:=s||' INTO oehr_inventories VALUES(1729,5,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1733,5,46); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1734,5,46); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,5,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,5,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,5,48); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,5,48); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1774,5,73); '||chr(10)||
'INSERT INTO oe';

s:=s||'hr_inventories VALUES(1775,5,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1778,5,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1779,5,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1780,5,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1794,5,77); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1799,5,77); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1801,5,78); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1803,5,78); '||chr(10)||
'INSERT INTO oehr_inven';

s:=s||'tories VALUES(1804,5,78); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1805,5,78); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1806,5,78); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1808,5,79); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1820,5,81); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1822,5,81); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1825,5,82); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1912,5,90); '||chr(10)||
'INSERT INTO oehr_inventories V';

s:=s||'ALUES(1940,5,44); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2005,5,69); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,5,77); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,5,83); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2319,5,62); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,5,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,5,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2326,5,70); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(23';

s:=s||'35,5,85); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2340,5,86); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2350,5,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2351,5,88); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2365,5,90); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,5,73); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2371,5,84); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,5,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,5,74)';

s:=s||'; '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2380,5,75); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,5,76); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2408,5,79); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2416,5,42); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2417,5,42); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2418,5,81); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,5,81); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2422,5,42); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_inventories VALUES(2423,5,43); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2449,5,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2452,5,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,5,87); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2462,5,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2464,5,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2467,5,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2468,5,50); '||chr(10)||
'INSERT INTO o';

wwv_flow_api.append_to_install_script(
  p_id => 313869426850630610 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'ehr_inventories VALUES(2470,5,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2471,5,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2492,5,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2493,5,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2494,5,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2596,5,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2631,5,69); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,5,84); '||chr(10)||
'INSERT INTO oehr_inve';

s:=s||'ntories VALUES(2722,5,83); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2779,5,92); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,5,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2879,5,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,5,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,5,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,5,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,5,157); '||chr(10)||
'INSERT INTO oehr_invent';

s:=s||'ories VALUES(3124,5,161); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,5,208); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3139,5,209); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,5,209); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,5,209); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3170,5,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3171,5,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3172,5,163); '||chr(10)||
'INSERT INTO oehr_invent';

s:=s||'ories VALUES(3173,5,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3175,5,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3176,5,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3177,5,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3178,5,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3179,5,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3182,5,165); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3183,5,165); '||chr(10)||
'INSERT INTO oehr_invent';

s:=s||'ories VALUES(3189,5,157); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3191,5,157); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3193,5,157); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3204,5,173); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3246,5,175); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3247,5,175); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3248,5,175); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3250,5,176); '||chr(10)||
'INSERT INTO oehr_invent';

s:=s||'ories VALUES(3251,5,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3252,5,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3253,5,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3255,5,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3256,5,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3257,5,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3258,5,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3260,5,177); '||chr(10)||
'INSERT INTO oehr_invent';

s:=s||'ories VALUES(3300,5,237); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3301,5,237); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3337,5,199); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3361,5,193); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3362,5,194); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,5,203); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3501,5,220); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3502,5,216); '||chr(10)||
'INSERT INTO oehr_invent';

s:=s||'ories VALUES(3503,5,216); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1729,6,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1733,6,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1734,6,30); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,6,30); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,6,30); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1739,6,30); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1740,6,30); '||chr(10)||
'INSERT INTO oehr_inventories V';

s:=s||'ALUES(1742,6,31); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,6,31); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,6,32); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1749,6,32); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1750,6,32); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1755,6,33); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1763,6,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1768,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(17';

s:=s||'69,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1770,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1772,6,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1774,6,62); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1775,6,62); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1778,6,62); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1779,6,62); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1780,6,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1781,6,37)';

s:=s||'; '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1787,6,38); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1788,6,38); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1791,6,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1792,6,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1794,6,65); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1797,6,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1799,6,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1801,6,66); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_inventories VALUES(1803,6,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1804,6,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1805,6,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1806,6,67); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1808,6,67); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1820,6,69); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1822,6,69); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1825,6,70); '||chr(10)||
'INSERT INTO o';

s:=s||'ehr_inventories VALUES(1912,6,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1940,6,33); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2005,6,84); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2058,6,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2093,6,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2144,6,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2243,6,30); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2245,6,30); '||chr(10)||
'INSERT INTO oehr_inve';

s:=s||'ntories VALUES(2255,6,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2257,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2259,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2260,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2261,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2262,6,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2264,6,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2266,6,63); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(2270,6,64); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2274,6,65); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2276,6,65); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,6,65); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2302,6,69); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,6,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2319,6,44); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,6,45); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2';

s:=s||'323,6,45); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2326,6,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2335,6,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2336,6,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2337,6,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2340,6,72); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2350,6,73); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2351,6,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2359,6,51';

s:=s||'); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2365,6,76); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,6,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2371,6,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,6,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2374,6,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2375,6,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,6,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2378,6,54); '||chr(10)||
'INSE';

s:=s||'RT INTO oehr_inventories VALUES(2380,6,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,6,55); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2394,6,56); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2395,6,56); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2396,6,57); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2402,6,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2403,6,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2404,6,58); '||chr(10)||
'INSERT INTO ';

s:=s||'oehr_inventories VALUES(2406,6,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2408,6,59); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2409,6,59); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2410,6,59); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2411,6,59); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2414,6,59); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2415,6,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2416,6,78); '||chr(10)||
'INSERT INTO oehr_inv';

s:=s||'entories VALUES(2417,6,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2418,6,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,6,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2422,6,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2423,6,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2424,6,61); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2430,6,65); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2439,6,66); '||chr(10)||
'INSERT INTO oehr_inventories';

s:=s||' VALUES(2449,6,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2452,6,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2453,6,68); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,6,69); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2462,6,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2464,6,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2467,6,37); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2468,6,37); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(';

s:=s||'2470,6,37); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2471,6,37); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2492,6,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2493,6,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2494,6,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2537,6,42); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2596,6,51); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2631,6,57); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,6,7';

s:=s||'2); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2722,6,71); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2752,6,90); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2779,6,80); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2783,6,81); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2810,6,85); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2870,6,94); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,6,110); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2879,6,110); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3000,6,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,6,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,6,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3054,6,172); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3057,6,172); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3060,6,173); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3061,6,173); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3065,6,174); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3071,6,175); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3072,6,175); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3077,6,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3082,6,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3083,6,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3086,6,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3088,6,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3090,6,178); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3091,6,178); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,6,145); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3108,6,146); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3110,6,147); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3112,6,147); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3117,6,148); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3124,6,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3127,6,149); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3129,6,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,6,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3139,6,185); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,6,186); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,6,186); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3165,6,141); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3167,6,141); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3170,6,149); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3171,6,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3172,6,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3173,6,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3175,6,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3176,6,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3177,6,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3178,6,151); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3179,6,151); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3182,6,151); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3183,6,151); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3189,6,145); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3191,6,145); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3193,6,145); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3204,6,161); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3209,6,148); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3225,6,150); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3246,6,161); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3247,6,162); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3248,6,162); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3250,6,162); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3251,6,162); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3252,6,162); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3253,6,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3255,6,163); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3256,6,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3257,6,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3258,6,163); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3260,6,164); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,6,214); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3301,6,214); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3331,6,221); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3334,6,222); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3337,6,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3350,6,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3354,6,225); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3355,6,225); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3359,6,226); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3361,6,180); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3362,6,180); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,6,191); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(3400,6,232); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3501,6,320); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3502,6,202); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3503,6,203); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3511,6,212); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3515,6,213); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1729,7,46); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1733,7,63); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(1734,7,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,7,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,7,63); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,7,65); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,7,65); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1774,7,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1775,7,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1778,7,50); '||chr(10)||
'INSERT INTO';

s:=s||' oehr_inventories VALUES(1779,7,51); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1780,7,51); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1794,7,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1799,7,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1801,7,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1803,7,55); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1804,7,55); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1805,7,55); '||chr(10)||
'INSERT INTO oehr_in';

s:=s||'ventories VALUES(1806,7,55); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1808,7,55); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1820,7,57); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1822,7,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1825,7,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1912,7,18); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1940,7,22); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2005,7,58); '||chr(10)||
'INSERT INTO oehr_inventorie';

s:=s||'s VALUES(2278,7,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,7,59); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2319,7,27); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,7,27); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,7,27); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2326,7,46); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2335,7,57); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2340,7,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES';

s:=s||'(2350,7,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2351,7,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2365,7,62); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,7,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2371,7,58); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,7,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,7,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2380,7,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,7,';

s:=s||'37); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2408,7,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2416,7,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2417,7,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2418,7,45); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,7,45); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2422,7,17); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2423,7,17); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2449,7,21); '||chr(10)||
'IN';

s:=s||'SERT INTO oehr_inventories VALUES(2452,7,21); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,7,51); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2462,7,23); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2464,7,23); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2467,7,24); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2468,7,24); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2470,7,24); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2471,7,24); '||chr(10)||
'INSERT INT';

s:=s||'O oehr_inventories VALUES(2492,7,28); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2493,7,28); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2494,7,28); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2596,7,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2631,7,45); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,7,60); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2722,7,59); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2779,7,68); '||chr(10)||
'INSERT INTO oehr_i';

s:=s||'nventories VALUES(2878,7,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2879,7,98); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,7,143); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,7,143); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,7,144); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,7,133); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3124,7,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,7,167); '||chr(10)||
'INSERT INTO oehr_inv';

s:=s||'entories VALUES(3139,7,168); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,7,168); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,7,168); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3170,7,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3171,7,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3172,7,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3173,7,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3175,7,137); '||chr(10)||
'INSERT INTO oehr_inv';

s:=s||'entories VALUES(3176,7,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3177,7,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3189,7,133); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3191,7,133); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3193,7,133); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3204,7,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3246,7,148); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3247,7,148); '||chr(10)||
'INSERT INTO oehr_inv';

s:=s||'entories VALUES(3248,7,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3250,7,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3251,7,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3252,7,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3253,7,149); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3257,7,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3258,7,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,7,196); '||chr(10)||
'INSERT INTO oehr_inv';

s:=s||'entories VALUES(3301,7,196); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3337,7,170); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3362,7,167); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,7,179); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3501,7,294); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3502,7,189); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3503,7,189); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1729,8,34); '||chr(10)||
'INSERT INTO oehr_inve';

s:=s||'ntories VALUES(1733,8,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1734,8,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,8,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,8,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1739,8,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1740,8,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1742,8,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,8,51); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(1748,8,51); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1749,8,51); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1750,8,51); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1755,8,52); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1763,8,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1768,8,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1769,8,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1770,8,5); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(17';

s:=s||'72,8,5); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1774,8,38); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1775,8,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1778,8,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1779,8,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1780,8,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1781,8,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1787,8,7); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1788,8,7); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(1791,8,8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1792,8,8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1794,8,42); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1797,8,9); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1799,8,42); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1801,8,43); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1803,8,43); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1804,8,43); '||chr(10)||
'INSERT INTO ';

s:=s||'oehr_inventories VALUES(1805,8,43); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1806,8,44); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1808,8,44); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1820,8,46); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1822,8,46); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1825,8,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1912,8,7); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1940,8,11); '||chr(10)||
'INSERT INTO oehr_inve';

s:=s||'ntories VALUES(2005,8,32); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2058,8,44); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2243,8,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2245,8,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2255,8,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2257,8,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2259,8,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2260,8,50); '||chr(10)||
'INSERT INTO oehr_inventories ';

s:=s||'VALUES(2261,8,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2262,8,50); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2264,8,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2266,8,39); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2270,8,40); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2274,8,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2276,8,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,8,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2';

s:=s||'302,8,45); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,8,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2319,8,12); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,8,12); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,8,13); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2326,8,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2335,8,44); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2340,8,45); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2350,8,47';

s:=s||'); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2351,8,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2359,8,18); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2365,8,49); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,8,20); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2371,8,46); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2373,8,20); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2374,8,21); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2375,8,21); '||chr(10)||
'INSE';

s:=s||'RT INTO oehr_inventories VALUES(2377,8,21); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2378,8,21); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2380,8,22); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,8,23); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2394,8,24); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2395,8,24); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2396,8,24); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2402,8,25); '||chr(10)||
'INSERT INTO ';

s:=s||'oehr_inventories VALUES(2403,8,25); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2404,8,25); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2406,8,26); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2408,8,26); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2409,8,26); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2410,8,26); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2411,8,26); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2414,8,27); '||chr(10)||
'INSERT INTO oehr_inv';

s:=s||'entories VALUES(2415,8,27); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2416,8,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2417,8,53); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2418,8,28); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,8,28); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2422,8,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2423,8,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2424,8,28); '||chr(10)||
'INSERT INTO oehr_inventories';

s:=s||' VALUES(2430,8,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2439,8,31); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2449,8,8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2452,8,9); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2453,8,33); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,8,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2462,8,10); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2464,8,11); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(24';

s:=s||'67,8,11); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2468,8,11); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2470,8,12); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2471,8,12); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2492,8,15); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2493,8,15); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2494,8,15); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2596,8,27); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2631,8,33)';

s:=s||'; '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,8,48); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2722,8,47); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2752,8,66); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2779,8,56); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,8,86); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2879,8,86); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,8,128); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,8,128); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3004,8,129); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3054,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3057,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3060,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3061,8,138); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3065,8,138); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3071,8,139); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3072,8,139); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3077,8,140); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3082,8,141); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3083,8,141); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3086,8,142); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3088,8,142); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3090,8,142); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3091,8,142); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,8,121); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3108,8,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3110,8,123); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3112,8,123); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3117,8,124); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3124,8,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3127,8,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3129,8,126); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,8,149); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3139,8,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,8,150); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,8,151); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3170,8,123); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3171,8,124); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3172,8,124); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3173,8,124); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3175,8,124); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3176,8,124); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3177,8,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3189,8,121); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3191,8,121); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3193,8,121); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3204,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3246,8,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3247,8,136); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3248,8,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3250,8,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3251,8,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3252,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3253,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3257,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3258,8,137); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,8,178); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3301,8,178); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3331,8,183); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3334,8,184); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3337,8,156); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3350,8,160); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3354,8,187); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3355,8,187); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3359,8,188); '||chr(10)||
'INS';

s:=s||'ERT INTO oehr_inventories VALUES(3362,8,154); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,8,167); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3400,8,194); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3501,8,268); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3502,8,176); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3503,8,177); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1729,9,23); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1733,9,35); '||chr(10)||
'INSER';

s:=s||'T INTO oehr_inventories VALUES(1734,9,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1737,9,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1738,9,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1739,9,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1740,9,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1742,9,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1745,9,37); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1748,9,37); '||chr(10)||
'INSERT INTO o';

s:=s||'ehr_inventories VALUES(1749,9,37); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1750,9,38); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1755,9,41); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1763,9,3); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1768,9,3); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1769,9,3); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1770,9,4); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1772,9,4); '||chr(10)||
'INSERT INTO oehr_inventori';

s:=s||'es VALUES(1781,9,5); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1787,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1788,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1791,9,7); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1792,9,7); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1797,9,8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1912,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(1940,9,0); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2058,9';

s:=s||',33); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2243,9,32); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2245,9,33); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2255,9,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2257,9,34); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2259,9,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2260,9,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2261,9,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2262,9,35); '||chr(10)||
'I';

s:=s||'NSERT INTO oehr_inventories VALUES(2264,9,27); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2266,9,27); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2270,9,28); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2274,9,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2276,9,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2278,9,29); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2302,9,33); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2316,9,35); '||chr(10)||
'INSERT IN';

s:=s||'TO oehr_inventories VALUES(2319,9,7); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2322,9,8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2323,9,8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2326,9,22); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2340,9,32); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2359,9,3); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2365,9,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2370,9,5); '||chr(10)||
'INSERT INTO oehr_inven';

wwv_flow_api.append_to_install_script(
  p_id => 313869426850630610 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
begin
s:=s||'tories VALUES(2373,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2374,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2375,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2377,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2378,9,6); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2380,9,7); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2387,9,8); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2394,9,9); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(23';

s:=s||'95,9,9); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2396,9,9); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2402,9,10); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2403,9,10); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2404,9,10); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2406,9,11); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2408,9,11); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2409,9,11); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2410,9,11); ';

s:=s||''||chr(10)||
'INSERT INTO oehr_inventories VALUES(2411,9,12); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2414,9,12); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2415,9,12); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2418,9,13); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2419,9,13); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2424,9,14); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2430,9,15); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2439,9,16); '||chr(10)||
'INSERT ';

s:=s||'INTO oehr_inventories VALUES(2453,9,18); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2457,9,19); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2596,9,15); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2631,9,21); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2638,9,36); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2722,9,35); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2752,9,54); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(2878,9,74); '||chr(10)||
'INSERT INTO oeh';

s:=s||'r_inventories VALUES(2879,9,74); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3000,9,110); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3003,9,111); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3004,9,111); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3054,9,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3057,9,119); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3060,9,120); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3061,9,120); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(3065,9,121); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3071,9,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3072,9,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3077,9,122); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3082,9,123); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3083,9,123); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3086,9,124); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3088,9,124); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(3090,9,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3091,9,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3099,9,109); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3108,9,110); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3110,9,111); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3112,9,111); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3117,9,112); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3124,9,113); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(3127,9,113); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3129,9,114); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3134,9,134); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3139,9,135); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3140,9,135); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3143,9,136); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3189,9,109); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3191,9,109); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(3193,9,109); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3204,9,125); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3300,9,161); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3301,9,161); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3331,9,165); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3334,9,166); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3350,9,148); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3354,9,169); '||chr(10)||
'INSERT INTO oehr';

s:=s||'_inventories VALUES(3355,9,169); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3359,9,170); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3391,9,155); '||chr(10)||
'INSERT INTO oehr_inventories VALUES(3400,9,179); '||chr(10)||
''||chr(10)||
'commit;'||chr(10)||
''||chr(10)||
'-- OWB, BI additions'||chr(10)||
''||chr(10)||
''||chr(10)||
'INSERT INTO oehr_promotions (promo_id, promo_name)'||chr(10)||
'  VALUES (1, ''everyday low price'');'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_promotions (promo_id, promo_name)'||chr(10)||
'  VALUES (2, ''blowout sale'');'||chr(10)||
''||chr(10)||
'COMMIT;';

wwv_flow_api.append_to_install_script(
  p_id => 313869426850630610 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_script_clob => s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'Rem'||chr(10)||
'Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  '||chr(10)||
'Rem'||chr(10)||
'Rem    NAME'||chr(10)||
'Rem      seed_online_catalog.sql '||chr(10)||
'Rem'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''hardware1'', ''monitors'', 11,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 11) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
' ';

s:=s||' VALUES (oehr_leaf_category_typ(''hardware2'', ''printers'', 12,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 12) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''hardware3'', ''harddisks'', 13,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 13)';

s:=s||' as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''hardware4'', ''memory components/upgrades'', 14,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 14) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''hardware5'''||chr(10)||
'         , ''processors, sound and v';

s:=s||'ideo cards, network cards, motherboards'', 15,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 15) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''hardware6'', ''keyboards, mouses, mouse pads'', 16,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id ';

s:=s||'= 16) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''hardware7'''||chr(10)||
'         , ''other peripherals (CD-ROM, DVD, tape cartridge drives, ...)'', 17,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 17) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ';

s:=s||'(''hardware8'''||chr(10)||
'         , ''miscellaneous hardware (cables, screws, power supplies ...)'', 19,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 19) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''software1'', ''spreadsheet software'', 21,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_in';

s:=s||'formation o'||chr(10)||
'    WHERE o.category_id = 21) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''software2'', ''word processing software'', 22,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 22) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''softwar';

s:=s||'e3'', ''database software'', 23,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 23) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''software4'', ''operating systems'', 24,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 24) as oehr_product_ref_li';

s:=s||'st_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''software5'', ''software development tools (including languages)'', 25,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 25) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''software6'', ''miscellaneous software'', 29,'||chr(10)||
'  CAS';

s:=s||'T(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 29) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''office1'', ''capitalizable assets (desks, chairs, phones ...)'', 31,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 31) as oehr_product_ref_list_typ';

s:=s||'))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''office2'''||chr(10)||
'         , ''office supplies for daily use (pencils, erasers, staples, ...)'', 32,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 32) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''office3'', ''manuals, other books';

s:=s||''', 33,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 33) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_leaf_category_typ(''office4'', ''miscellaneous office supplies'', 39,'||chr(10)||
'  CAST(MULTISET(SELECT o.product_id'||chr(10)||
'    FROM oehr_oc_product_information o'||chr(10)||
'    WHERE o.category_id = 39) as oehr_product_ref_list_typ))) ;'||chr(10)||
''||chr(10)||
'';

s:=s||'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_composite_category_typ(''hardware'', ''computer hardware and peripherals'', 10,'||chr(10)||
'  CAST(MULTISET(SELECT REF(g)'||chr(10)||
'    FROM oehr_categories_tab g'||chr(10)||
'    WHERE g.category_id IN (11, 12, 13, 14, 15, 16, 17, 19)) as'||chr(10)||
'         oehr_subcategory_ref_list_typ)));'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_composite_category_typ(''software'', ''computer software'', 20,'||chr(10)||
' ';

s:=s||' CAST(MULTISET(SELECT REF(g)'||chr(10)||
'    FROM oehr_categories_tab g'||chr(10)||
'    WHERE g.category_id IN (21, 22, 23, 24, 25, 29)) as '||chr(10)||
'         oehr_subcategory_ref_list_typ)));'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_composite_category_typ(''office equipment'', ''office furniture and supplies'', 30,'||chr(10)||
'  CAST(MULTISET(SELECT REF(g)'||chr(10)||
'    FROM oehr_categories_tab g'||chr(10)||
'    WHERE g.category_id IN (31, 32, 33, 39)) as'||chr(10)||
'   ';

s:=s||'      oehr_subcategory_ref_list_typ)));'||chr(10)||
''||chr(10)||
'INSERT INTO oehr_categories_tab'||chr(10)||
'  VALUES (oehr_catalog_typ(''online catalog'''||chr(10)||
'         , ''catalog of computer hardware, software, and office equipment'''||chr(10)||
'         , 90,'||chr(10)||
'  CAST(MULTISET(SELECT REF(g)'||chr(10)||
'    FROM oehr_categories_tab g'||chr(10)||
'    WHERE g.category_id IN (10, 20, 30)) as'||chr(10)||
'         oehr_subcategory_ref_list_typ)));'||chr(10)||
''||chr(10)||
'ALTER TYPE oehr_category_typ'||chr(10)||
' ADD ATTRIBUTE (';

s:=s||'parent_category_id number(2)) CASCADE;'||chr(10)||
''||chr(10)||
'UPDATE oehr_categories_tab'||chr(10)||
'  SET parent_category_id = 90'||chr(10)||
'  WHERE category_id IN (10, 20, 30);'||chr(10)||
''||chr(10)||
'UPDATE oehr_categories_tab'||chr(10)||
'  SET parent_category_id = 10'||chr(10)||
'  WHERE category_id IN (11, 12, 13, 14, 15, 16, 17, 19);'||chr(10)||
''||chr(10)||
'UPDATE oehr_categories_tab'||chr(10)||
'  SET parent_category_id = 20'||chr(10)||
'  WHERE category_id IN (21, 22, 23, 24, 25, 29);'||chr(10)||
''||chr(10)||
'UPDATE oehr_categories_tab'||chr(10)||
'  SET parent_cat';

s:=s||'egory_id = 30'||chr(10)||
'  WHERE category_id IN (31, 32, 33, 39);'||chr(10)||
''||chr(10)||
'COMMIT;'||chr(10)||
''||chr(10)||
'ALTER TYPE oehr_catalog_typ COMPILE BODY;'||chr(10)||
'ALTER TYPE oehr_composite_category_typ COMPILE BODY;'||chr(10)||
'ALTER TYPE oehr_leaf_category_typ COMPILE BODY; ';

wwv_flow_api.create_install_script(
  p_id => 313870212832637184 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 627502511577259195 + wwv_flow_api.g_id_offset,
  p_name => 'seed online catalog',
  p_sequence=> 90,
  p_script_clob=> s);
end;
 
 
end;
/

--application/deployment/checks
prompt  ...application deployment checks
--
 
begin
 
null;
 
end;
/

--application/deployment/buildoptions
prompt  ...application deployment build options
--
 
begin
 
null;
 
end;
/

--application/end_environment
commit;
commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
