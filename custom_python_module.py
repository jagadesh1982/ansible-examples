---
 - hosts: dev
   vars_prompt:
    - name: giveName
      prompt: "Please provide your name"
      private: no
      failed_when: giveName is undefined

   tasks:
    - name: Python Execution
      testing: yourName={{ giveName }}
      register: result
   
    - debug: var=result

