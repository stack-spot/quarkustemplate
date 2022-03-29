{% if inputs.package_manager == 'Gradle' %}
  rmdir /s /q "maven"
  move "gradle" "gradle_"
  xcopy /s /i "gradle_" "."
  rmdir /s /q "gradle_"
{% endif %}

{% if inputs.package_manager == 'Maven' %}
  rmdir /s /q "gradle"
  xcopy /s /i "maven" "."
  rmdir /s /q "maven"
{% endif %}