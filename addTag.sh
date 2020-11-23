if [ "$(git rev-parse --short HEAD)" = "$(cat /opt/jenkins/tags/tagtest/tag.txt)" ]; then
    echo "Strings are equal."
else
    echo SE$(git rev-parse --short HEAD) > /opt/jenkins/tags/tagtest/mytag.txt
    echo $(git rev-parse --short HEAD) > /opt/jenkins/tags/tagtest/tag.txt
    git tag -a SE$(git rev-parse --short HEAD) -m "adding tag with SE"
    git push origin --tags

fi
