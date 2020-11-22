require "pry"

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end


    def backed_project_helper
        ProjectBacker.all.select {|pb| pb.backer == self }
    end

    def backed_projects
        self.backed_project_helper.map { |pb| pb.project }
    end
    binding.pry
end