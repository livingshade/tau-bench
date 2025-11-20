import litellm

# litellm._turn_on_debug()

resp = litellm.completion(
    model="Qwen/Qwen3-0.6B",
    custom_llm_provider="hosted_vllm",
    messages=[
        {"role": "system", "content": "You are a helpful assistant."},
        {"role": "user", "content": "What is the capital of France?"},
    ],
    temperature=0.0,
    api_base="http://0.0.0.0:8000/v1",
)

print(resp)