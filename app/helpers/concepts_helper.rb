module ConceptsHelper
  def concept_title(concept)
    "Concept #{ concept.number }"
  end

  def show_concept_progress_actions?(concept)
    concept.concept_progresses.map { |cp|
      policy(cp).edit?
    }.any?
  end
end
