require "rspec"

require_relative "task"
require_relative "list"

describe List do
  # Your specs here
  let(:task)        {[Task.new("carrots"),Task.new("hamburger"),Task.new("pizza")]}
  let(:title)       {"Groceries"}
  let(:list)        { List.new(title, task) }

  describe "#initialize" do
    it "takes a title for its first argument" do
      list.should be_an_instance_of List
    end

    it "new List requires one argument" do
      expect { List.new }.to raise_error(ArgumentError)
    end
  end

  describe "#title" do
    it "returns the correct title for the list" do
      list.title.should eq title
    end
  end

  describe "#tasks" do
    it "returns the correct tasks from the list" do
      list.tasks.should eq task
    end
  end

  describe "#add_task" do
    it "adds a new task to list" do
      # target.should have(<number>).things
      list.add_task(Task.new("potatos")).should have(4).things
    end

    it "add_task takes a single argument" do
      expect { list.add_task }.to raise_error(ArgumentError)
    end
  end

  describe "#complete_task" do
    it "returns the correct tasks from the list" do
      list.complete_task(2).should eq true
    end

    it "complete_task takes a single argument" do
      expect { list.complete_task }.to raise_error(ArgumentError)
    end
  end

  describe "#delete_task" do
    it "should return 1 less task in list" do
      list.delete_task(2)
      list.tasks.should have(2).things
    end

    it "delete_task takes a single argument" do
      expect { list.delete_task }.to raise_error(ArgumentError)
    end
  end

  describe "#completed_tasks" do
    it "returns the number of completed tasks from list" do
      list.complete_task(2)
      list.completed_tasks.should have(1).things
    end
  end

  describe "#incomplete_tasks" do
    it "returns the number of incompleted tasks from list" do
      list.complete_task(2)
      list.incomplete_tasks.should have(2).things
    end
  end
end
