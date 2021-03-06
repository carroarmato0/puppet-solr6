# Manages defaults paramters for the module
class solr6::params {
  $version           = '6.6.0'
  $user              = 'solr'
  $group             = 'solr'
  $base_dir          = '/opt/solr'
  $data_dir          = "${base_dir}/server"
  $log_dir           = '/var/log/solr'
  $log_level         = 'INFO'
  $timezone          = $::timezone
  $installation_type = 'web'
  $manage_java       = true
  $manage_entropy    = true
  $memory            = '512m'
  $port              = '8983'
  $extra_params      = ''
  $example           = ''
  $download_url_base = 'http://apache.cu.be/lucene/solr'
}
