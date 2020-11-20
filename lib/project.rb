class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end


    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers_helper
        ProjectBacker.all.select {|pb| pb.project == self }
    end

    def backers
        self.backers_helper.map { |pb| pb.backer }
    end

end