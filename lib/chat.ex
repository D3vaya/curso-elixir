defmodule Chat do
  def receive_message(message) do
    IO.puts(message)
  end

  def send_message(recipient, message) do
    spawn_task(__MODULE__, :receive_message, recipient, [message])
  end

  def spawn_task(module, func, recipient, args) do
    recipient
    |> remote_supervisor()
    |> Task.Supervisor.async(module, func, args)
    |> Task.await()
  end

  defp remote_supervisor(recipient) do
    {Chat.TaskSupervisor, recipient}
  end
end
