## jasper_reports - Deploy Jasper reports

This role deploys reports and datasources to JasperReports Server instances.

## Requirements

- Ansible 2.17 or higher
- Access to the JasperReports Server
- The `xmllint` utility for XML parsing

## Role Variables

The following variables can be set to customize the role's behavior:

- `jasper_server_instance`: The instance of the JasperReports Server. Must be either 'JCRS' or 'NRSRS'.
- `jasper_project_name`: The name of the Jasper project. Must NOT be in the list of invalid project names.
- `jasper_ds_0_url`: The URL of the primary datasource.
- `jasper_ds_0_user`: The username for the primary datasource.
- `jasper_ds_0_password`: The password for the primary datasource.
- `jasper_deployer_url`: The URL used for deploying reports to the JasperReports Server.
- `jasper_deployer_user`: The username for deploying reports to the JasperReports Server.
- `jasper_deployer_password`: The password for deploying reports to the JasperReports Server.
- `jasper_cookie_key`: The key for the JasperReports Server loadbalancing cookie.
- `jasper_route_id`: The route ID for the JasperReports Server instance.
- `jasper_env`: The environment in which the JasperReports Server is running. Must be one of 'dev', 'test', or 'prod'.

## Example Playbook

```yaml
- hosts: all
  roles:
    - role: jasper_reports
      vars:
        jasper_server_instance: "JCRS"
        jasper_project_name: "EXAMPLE"
        jasper_ds_0_url: "jdbc:oracle:thin:@//hostname:port/service_name"
        jasper_ds_0_user: "user"
        jasper_ds_0_password: "password"
        jasper_deployer_url: "https://jasper.example.com"
        jasper_deployer_user: "deployer"
        jasper_deployer_password: "password"
        jasper_cookie_key: "COOKIE_KEY"
        jasper_route_id: "ROUTE_ID"
        jasper_env: "dev"
```
