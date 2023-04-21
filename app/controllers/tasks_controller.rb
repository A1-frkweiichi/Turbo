def toggle
  @task.update(completed: !@task.completed)

  render turbo_stream: turbo_stream.replace(
    @task,
    partial: 'completed',
    locals: { task: @task }
  )
end
