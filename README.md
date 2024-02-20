# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Install dependencies: `npm i`
- Login to CF: `cf login`
- Build: `mbt build`
- Deploy: `deploy mta_archives/todolist_1.0.0.mtar`
- Check if service keys exist for db and auth service: `cf service-keys SERVICE_INSTANCE_NAME`
- Create service keys if necessary: `cf create-service-key SERVICE_INSTANCE_NAME SERVICE_INSTANCE_KEY`
- Binding to service instances: `cds bind -2 SERVICE_INSTANCE_NAME:SERVICE_INSTANCE_KEY`
- Check if file .cdsrc-private.json has been created after service binding
- Start: `cds watch --profile hybrid` 