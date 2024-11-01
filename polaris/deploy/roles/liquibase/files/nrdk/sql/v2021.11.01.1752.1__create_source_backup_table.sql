create table nrdk_tmp_source(source_name varchar2(255), source_type varchar2(80), source_version varchar2(80), text clob)
/

create unique index nrdk_tmp_source_uk on nrdk_tmp_source(source_name, source_type, source_version)
/