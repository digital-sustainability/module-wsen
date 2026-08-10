# Revision Plan for Unterricht Notebooks

## Goal
Improve the consistency, beginner-friendliness, and instructional flow of the notebooks in the Unterricht folder.

## Overall principles for all weeks
Each notebook should follow the same basic structure:
1. Short overview of the topic
2. Learning goals
3. Connection to previous week(s)
4. One main concept at a time
5. One worked example
6. One mini-check or quick question
7. One or two exercises
8. Short summary of key takeaways

Every notebook should help students answer three questions:
- What am I learning?
- Why does it matter?
- How do I practice it?

## Week-by-week revision plan

### Week 1
Files:
- [notebooks/Unterricht/Woche_1/01_Arbeit_mit_Jupyter_Notebooks.ipynb](notebooks/Unterricht/Woche_1/01_Arbeit_mit_Jupyter_Notebooks.ipynb)
- [notebooks/Unterricht/Woche_1/02_Erste_Schritte.ipynb](notebooks/Unterricht/Woche_1/02_Erste_Schritte.ipynb)

Suggested changes:
- Strengthen onboarding to Jupyter notebooks.
- Add a clearer explanation of how to run cells and why execution order matters.
- Add a concise beginner glossary for terms such as variable, cell, code, output, and error.
- Add a very short section on how variables persist between cells.

### Week 2
File:
- [notebooks/Unterricht/Woche_2/01_Unterricht.ipynb](notebooks/Unterricht/Woche_2/01_Unterricht.ipynb)

Suggested changes:
- Add a stronger explanation of why datatypes matter.
- Introduce strings, integers, floats, and errors in a more intuitive way.
- Add a simple comparison of what works and what causes errors.
- Make the exercises slightly more guided.

### Week 3
File:
- [notebooks/Unterricht/Woche_3/01_Unterricht.ipynb](notebooks/Unterricht/Woche_3/01_Unterricht.ipynb)

Suggested changes:
- Explain conditions in plain language as "yes/no questions".
- Add a visual or simple flow explanation for if/else logic.
- Add one short tracing exercise before moving to more complex examples.
- Make the transition from simple conditions to if/elif/else clearer.

### Week 4
File:
- [notebooks/Unterricht/Woche_4/01_Unterricht.ipynb](notebooks/Unterricht/Woche_4/01_Unterricht.ipynb)

Suggested changes:
- Add a section explaining what changes during each iteration of a loop.
- Clarify how loop conditions are checked and when a loop stops.
- Add a very simple infinite-loop example with an explanation.
- Include one exercise focused on tracing loop behavior rather than only writing new code.

### Week 5
File:
- [notebooks/Unterricht/Woche_5/01_Unterricht.ipynb](notebooks/Unterricht/Woche_5/01_Unterricht.ipynb)

Suggested changes:
- This is the highest-priority week for revision.
- Split the topic into smaller units:
  1. lists and dictionaries
  2. pandas and DataFrames
  3. database access
- Add a bridge between the concepts so students understand the progression.
- Use one concrete example showing how a list of dictionaries can become a table.
- Reduce the amount of new material presented at once.

### Week 6
File:
- [notebooks/Unterricht/Woche_6/01_Unterricht.ipynb](notebooks/Unterricht/Woche_6/01_Unterricht.ipynb)

Suggested changes:
- Explain functions in plain language: reusable blocks of code, inputs, outputs.
- Add a very simple example before introducing more complex functions.
- Add a short section on common beginner mistakes:
  - forgetting parentheses
  - forgetting return
  - mixing up parameter names and variables

### Week 7
File:
- [notebooks/Unterricht/Woche_7/01_Unterricht.ipynb](notebooks/Unterricht/Woche_7/01_Unterricht.ipynb)

Suggested changes:
- Add a short section explaining what an error is before introducing try/except.
- Clarify the difference between syntax errors, runtime errors, and logical errors.
- Use a beginner-friendly input example that handles invalid input safely.
- Make the purpose of exception handling more concrete.

### Week 8
File:
- [notebooks/Unterricht/Woche_8/01_Unterricht.ipynb](notebooks/Unterricht/Woche_8/01_Unterricht.ipynb)

Suggested changes:
- Rebuild the lesson around a slow and simple progression:
  1. class
  2. object
  3. attribute
  4. method
  5. then business object and ERD connection
- Add an everyday analogy before introducing OOP syntax.
- Avoid introducing too many OOP concepts at once.
- Make the business-object connection more explicit.

### Week 9
File:
- [notebooks/Unterricht/Woche_9/01_Unterricht.ipynb](notebooks/Unterricht/Woche_9/01_Unterricht.ipynb)

Suggested changes:
- Add clearer comparisons between tuples and lists, and between dictionaries and lists.
- Explain dictionaries as a key-value mapping with a simple analogy.
- Scaffold the exercises more carefully, especially the login-system task.
- Make it clearer when each data structure is useful.

### Week 10
File:
- [notebooks/Unterricht/Woche_10/01_Unterricht.ipynb](notebooks/Unterricht/Woche_10/01_Unterricht.ipynb)

Suggested changes:
- Introduce lambda and recursion more gently.
- Start with one simple lambda example and one simple recursion example.
- Add a short "why would I use this?" explanation for both topics.
- Explain recursion through the three ideas of smaller problem, base case, and recursive step.

### Week 11
File:
- [notebooks/Unterricht/Woche_11/01_Unterricht.ipynb](notebooks/Unterricht/Woche_11/01_Unterricht.ipynb)

Suggested changes:
- Add a plain-language explanation of inheritance before the syntax.
- Use a simple parent/child example to make the idea concrete.
- Explain super() as "reuse the parent logic, then add something new."
- Make the distinction between extension and override clearer.

### Week 12
File:
- [notebooks/Unterricht/Woche_12/01_Unterricht.ipynb](notebooks/Unterricht/Woche_12/01_Unterricht.ipynb)

Suggested changes:
- Present comprehensions as a shorter way to write a loop.
- Add a before/after example showing loop-to-comprehension transformation.
- Add a short section explaining why string formatting matters for readability.
- Reduce the impression that students need to learn many new ideas at once.

## Exercise improvements across the course
Apply these improvements to exercise notebooks as well:
- Use a more scaffolded structure: small step, slightly harder step, transfer task.
- Add hints or prompts such as:
  - What should the function return?
  - What should the output look like?
  - What is the first thing to test?
- Add short explanations in solutions so students understand why the code works, not only what it does.

## Suggested implementation order
1. Week 5
2. Week 8
3. Week 10
4. Week 11
5. Week 12
6. Apply the common structure template to all weeks
7. Improve exercise scaffolding across the course
