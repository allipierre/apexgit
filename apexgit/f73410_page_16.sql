prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_200200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.19'
,p_default_workspace_id=>17164828255763912239
,p_default_application_id=>73410
,p_default_id_offset=>38832792430776092597
,p_default_owner=>'PYOTTI'
);
end;
/
 
prompt APPLICATION 73410 - Sample Interactive Grids
--
-- Application Export:
--   Application:     73410
--   Name:            Sample Interactive Grids
--   Date and Time:   11:03 Thursday October 22, 2020
--   Exported By:     PYOTTI@PITSS.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 16
--   Manifest End
--   Version:         20.2.0.00.19
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00016
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>16);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(40156486314981794814)
,p_name=>'test'
,p_alias=>'TEST'
,p_step_title=>'test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'PYOTTI@PITSS.COM'
,p_last_upd_yyyymmddhh24miss=>'20201022110232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41876124651739350803)
,p_plug_name=>'TestA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(40156458907540794757)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
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
