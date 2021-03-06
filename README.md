# dpk-patches

This repository is a list of patches made to the delivered DPK codeline. These changes fix some bugs, and enabled some additional features that the DPK does not provide.

This repo was inspired by Dan Roque's excellent [pt_dpk_patches](https://github.com/bloodmc/pt_dpk_patches) repo that has his fixes to the DPK. 

## Bug fixes

* Multiple PS_CFG_HOME Support: In the providers, the `$PS_CFG_HOME` environment variable is set to support multiple configuration homes
* Support for per-software middleware reployments using custom `::*_redeploy` facts
* Support for specifying archive files (enables centralizing on DFS)
* Better WL Status checking
* Correct Process Scheduler feature list 
* Hiera Hashing
* Support for non-PDB password changes to users in the database
* ACM output password masking
* Use the custom fact `::ps_role` instead of `domain_type`

## Custom Facts

There are two custom facts included in the repository. 

**ps_role**

The `ps_role.rb` fact is an example on how to parse the hostname to return the server role (i.e, app server, process scheduler, etc). Modify as needed to support your naming conventions

**redeploy**

This fact can be used as-is. The fact is built to always return `false` by design. To override the fact, you can specify an environment variable:

```powershell
PS C:\> $env:FACTER_weblogic_redeploy="true"
```

This will tell the DPK to redeploy the WebLogic DPK archive (uninstall, then re-install).

