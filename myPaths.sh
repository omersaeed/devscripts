# This file should not be pushed, unless there are new parameters that get defined here that others need to add to their own version

localRepos="bake, mesh, scheme, bastion, spire, auxl, dax, daft, enamel, bedrockjs, csi, gloss, lookandfeel, siq-vendor-js, glad, cloudiq, bootstrap, devops-tools, platoon, siqconf, appstack, truss"
#upstreamRepos=""
upstreamRepos="mesh, bastion, spire, auxl, dax, daft, bedrockjs, gloss, siq-vendor-js, glad"


gitHome="/d/StoredIQ/siq_github_repo"
gatewayHome="/d/StoredIQ/siq_repo/trunk/gateway"

#This is the path of the git repository home relative to gatewayHome
projRPath="../../../siq_github_repo/"
#This is the path of the svn siq_repo home relative to the git repo
svnSiqRepoPath="../siq_repo/trunk/gateway"

#The folders that should be preserved (Environment specific)
glad="gloss\|bedrock"
daft="gloss"
dax=""
gloss="bedrock"