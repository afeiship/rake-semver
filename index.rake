# main task list:
require "semver"

namespace :semver do
  desc "Semver init"
  task :init do
    sh "semver init"
  end

  desc "Patch increace"
  task :patch_inc do |task, args|
    v = SemVer.find
    v.special = "-alpha"
    v.patch += 1
    p v.to_s
    v.save
  end
end
