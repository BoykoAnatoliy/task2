class Engine
  def initialize
    @work = false
  end

  def work
    @work
  end

  def ready(work)
    @work = work
  end
end