cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  drug-abuse-elixhauser-primary-care-therapy---primary:
    run: drug-abuse-elixhauser-primary-care-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  drug-abuse-elixhauser-primary-care-misuser---primary:
    run: drug-abuse-elixhauser-primary-care-misuser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-therapy---primary/output
  drug-abuse-elixhauser-primary-care-monitoring---primary:
    run: drug-abuse-elixhauser-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-misuser---primary/output
  drug-abuse-elixhauser-primary-care-sniffing---primary:
    run: drug-abuse-elixhauser-primary-care-sniffing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-monitoring---primary/output
  drug-abuse-elixhauser-primary-care-addiction---primary:
    run: drug-abuse-elixhauser-primary-care-addiction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-sniffing---primary/output
  drug-abuse-elixhauser-primary-care-remission---primary:
    run: drug-abuse-elixhauser-primary-care-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-addiction---primary/output
  drug-abuse-elixhauser-primary-care-place---primary:
    run: drug-abuse-elixhauser-primary-care-place---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-remission---primary/output
  episodic-drug-abuse-elixhauser-primary-care---primary:
    run: episodic-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-place---primary/output
  opioid-drug-abuse-elixhauser-primary-care---primary:
    run: opioid-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: episodic-drug-abuse-elixhauser-primary-care---primary/output
  sedative-drug-abuse-elixhauser-primary-care---primary:
    run: sedative-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: opioid-drug-abuse-elixhauser-primary-care---primary/output
  behavioural-drug-abuse-elixhauser-primary-care---primary:
    run: behavioural-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: sedative-drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care-specified---primary:
    run: drug-abuse-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: behavioural-drug-abuse-elixhauser-primary-care---primary/output
  personal-drug-abuse-elixhauser-primary-care---primary:
    run: personal-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-specified---primary/output
  drug-abuse-elixhauser-primary-care-cannabis---primary:
    run: drug-abuse-elixhauser-primary-care-cannabis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: personal-drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care-detoxification---primary:
    run: drug-abuse-elixhauser-primary-care-detoxification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-cannabis---primary/output
  drug-abuse-elixhauser-primary-care-barbiturate---primary:
    run: drug-abuse-elixhauser-primary-care-barbiturate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-detoxification---primary/output
  laxative-drug-abuse-elixhauser-primary-care---primary:
    run: laxative-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-barbiturate---primary/output
  drug-abuse-elixhauser-primary-care-hallucinatory---primary:
    run: drug-abuse-elixhauser-primary-care-hallucinatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: laxative-drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care-hallucinogens---primary:
    run: drug-abuse-elixhauser-primary-care-hallucinogens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-hallucinatory---primary/output
  drug-abuse-elixhauser-primary-care-puerperium---primary:
    run: drug-abuse-elixhauser-primary-care-puerperium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-hallucinogens---primary/output
  drug-abuse-elixhauser-primary-care-antidepressant---primary:
    run: drug-abuse-elixhauser-primary-care-antidepressant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-puerperium---primary/output
  mixed-drug-abuse-elixhauser-primary-care---primary:
    run: mixed-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-antidepressant---primary/output
  drug-abuse-elixhauser-primary-care-delirium---primary:
    run: drug-abuse-elixhauser-primary-care-delirium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: mixed-drug-abuse-elixhauser-primary-care---primary/output
  continuous-drug-abuse-elixhauser-primary-care---primary:
    run: continuous-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-delirium---primary/output
  drug-abuse-elixhauser-primary-care-tranquilliser---primary:
    run: drug-abuse-elixhauser-primary-care-tranquilliser---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: continuous-drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care---primary:
    run: drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-tranquilliser---primary/output
  drug-abuse-elixhauser-primary-care-excluding---primary:
    run: drug-abuse-elixhauser-primary-care-excluding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care-shared---primary:
    run: drug-abuse-elixhauser-primary-care-shared---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-excluding---primary/output
  drug-abuse-elixhauser-primary-care-stopped---primary:
    run: drug-abuse-elixhauser-primary-care-stopped---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-shared---primary/output
  drug-abuse-elixhauser-primary-care-benzodiazepine---primary:
    run: drug-abuse-elixhauser-primary-care-benzodiazepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-stopped---primary/output
  drug-abuse-elixhauser-primary-care-counselling---primary:
    run: drug-abuse-elixhauser-primary-care-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-benzodiazepine---primary/output
  drug-abuse-elixhauser-primary-care-dependence---primary:
    run: drug-abuse-elixhauser-primary-care-dependence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-counselling---primary/output
  referral-drug-abuse-elixhauser-primary-care---primary:
    run: referral-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-dependence---primary/output
  drug-abuse-elixhauser-primary-care-cocaine---primary:
    run: drug-abuse-elixhauser-primary-care-cocaine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: referral-drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care-combined---primary:
    run: drug-abuse-elixhauser-primary-care-combined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-cocaine---primary/output
  drug-abuse-elixhauser-primary-care-ecstasy---primary:
    run: drug-abuse-elixhauser-primary-care-ecstasy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-combined---primary/output
  clinical-drug-abuse-elixhauser-primary-care---primary:
    run: clinical-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-ecstasy---primary/output
  other-drug-abuse-elixhauser-primary-care---primary:
    run: other-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: clinical-drug-abuse-elixhauser-primary-care---primary/output
  nondependent-drug-abuse-elixhauser-primary-care---primary:
    run: nondependent-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: other-drug-abuse-elixhauser-primary-care---primary/output
  drug---primary:
    run: drug---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: nondependent-drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care-state---primary:
    run: drug-abuse-elixhauser-primary-care-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: drug---primary/output
  drug-abuse-elixhauser-primary-care-paranoia---primary:
    run: drug-abuse-elixhauser-primary-care-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-state---primary/output
  acute-drug-abuse-elixhauser-primary-care---primary:
    run: acute-drug-abuse-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-paranoia---primary/output
  drug-abuse-elixhauser-primary-care-delivered---primary:
    run: drug-abuse-elixhauser-primary-care-delivered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: acute-drug-abuse-elixhauser-primary-care---primary/output
  drug-abuse-elixhauser-primary-care-substance---primary:
    run: drug-abuse-elixhauser-primary-care-substance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-delivered---primary/output
  drug-abuse-elixhauser-primary-care-alcohol---primary:
    run: drug-abuse-elixhauser-primary-care-alcohol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-substance---primary/output
  drug-abuse-elixhauser-primary-care-pregnancy---primary:
    run: drug-abuse-elixhauser-primary-care-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-alcohol---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: drug-abuse-elixhauser-primary-care-pregnancy---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
