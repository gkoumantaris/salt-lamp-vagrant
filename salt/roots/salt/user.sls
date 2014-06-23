gitlab_ci_runner-user:
  user.present:
    - name : gitlab_ci_runner
    - system: True
    - shell: /bin/bash
    - fullname: GitLab
    - home: /home/gitlab_ci_runner

gitlab_ci_runner-home:
  file.directory:
    - name: /home/gitlab_ci_runner
    - user: gitlab_ci_runner 
    - group: gitlab_ci_runner 
    - mode: 750
    - require:
      - user: gitlab_ci_runner 
