remote_file '/etc/yum.repos.d/epel-apache-maven.repo' do
  source 'http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo'
  user 'root'
  group 'root'
  mode 0644
end

package 'apache-maven'
