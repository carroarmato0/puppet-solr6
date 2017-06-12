# Class: solr6
# ===========================
#
# Module that manages Solr 6.x.x.
#
# Parameters
# ----------
#
# * `version`
#   Specific version of Solr required.
#   Example: 6.6.0
#
# * `installation_type`
#   Module supports both fetching Solr from the internet as well as from a package.
#   Supported options are: `web` and `package`
#   Default is: web
#
class solr6 (
  $version           = $::solr::params::version,
  $installation_type = $::solr::params::installation_type,
) inherits solr6::params {

  include solr6::install

}