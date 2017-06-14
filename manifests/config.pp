# Manages basic configuration
class solr6::config {

  file { '/opt/solr':
    ensure => link,
    target => "/opt/solr-${::solr6::version}",
  }

  # Manage ownership and permission of default folders
  $default_folders = [
    "/opt/solr-${::solr6::version}",
    '/opt/solr/bin',
    '/var/log/solr',
    $::solr6::data_dir,
    "${::solr6::data_dir}/logs/archived",
    "${::solr6::data_dir}/solr",
  ]

  file { "${::solr6::data_dir}/logs":
    ensure => link,
    target => '/var/log/solr',
    force  => true,
  }

  file { $default_folders:
    ensure => directory,
    mode   => '0644',
    owner  => 'solr',
    group  => 'solr',
  }

  file { '/opt/solr/example':
    ensure       => directory,
    owner        => 'solr',
    group        => 'solr',
    recurse      => true,
    recurselimit => 4,
  }

}
