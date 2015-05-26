json.array!(@quiztests) do |quiztest|
  json.extract! quiztest, :id, :question, :ansA, :ansB, :ansC, :ansD, :correct
  json.url quiztest_url(quiztest, format: :json)
end
