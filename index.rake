# main task list:
require "semver"

namespace :semver do
  # rake hello_with_args[afei,bash]
  desc "Semver init"
  task :init[:major, :minor, :patch] do |task, args|
    # SemVer.new a
  end
  # rake hello_with_args[afei,bash]
  desc "want to say hello"
  task :patch_inc do |task, args|
    v = SemVer.find
    v.patch += 1
    v.save
  end
end
