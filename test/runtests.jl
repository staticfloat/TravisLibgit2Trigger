using LibGit2

# Create repository
git_path = joinpath(@__DIR__, "source_repo.git")
mkpath(git_path)
repo = LibGit2.init(git_path)
LibGit2.commit(repo, "Initial empty commit")

# Make bare clone of that repository
clone_path = joinpath(@__DIR__, "cloned_repo")
clone_repo = LibGit2.clone(git_path, clone_path; isbare=true)

# Fetch on the clone!
LibGit2.fetch(clone_repo)
