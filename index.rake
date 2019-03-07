# main task list:
require "semver"

namespace :semver do
  desc "Semver init"
  task :init do
    sh "semver init"
  end

  desc "Patch increace"
  task :patch_inc do |task, args|
    version = SemVer.find
    version.special = "-alpha"
    version.patch += 1
    version.save
  end
end
