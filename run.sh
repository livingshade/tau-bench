
for i in {1..3}
do
	  echo "Running iteration $i"
	    USER_API_BASE="http://0.0.0.0:8000/v1" \
		      AGENT_API_BASE="http://0.0.0.0:8001/v1" \
		        python run.py  --agent-strategy tool-calling --env retail \
			  --model "Qwen/Qwen3-1.7B" --model-provider hosted_vllm \
			    --user-model "gemini-2.5-flash"  --user-model-provider gemini \
			      --user-strategy llm --max-concurrency 1
	      echo "Done iteration $i"
      done

