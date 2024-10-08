cwlVersion: v1.0
class: CommandLineAgent
id: hello_no_container
label: hello_no_container

requirements:
  - class: InitialWorkDirRequirement
    listing:
      - entryname: hello-world.bash
        entry: |-
          echo "Hello world!!!!!!!"
          echo
          echo "Computing the md5 of $(inputs.an_input.location)"
          md5sum $(inputs.an_input.path)
          echo
          echo "Showing the inherited environment"
          env

baseCommand: ["bash", "hello-world.bash"]

inputs:
  an_input:
    type: File

outputs:
  hello_output:
    type: stdout
stdout: hello_output.txt
