# CMake generated Testfile for 
# Source directory: /home/george/Desktop/group16_workspace/src/ROSPlan/rosplan_knowledge_base
# Build directory: /home/george/Desktop/group16_workspace/build/rosplan_knowledge_base
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosplan_knowledge_base_rostest_test_launch_knowledge_base.test "/home/george/Desktop/group16_workspace/build/rosplan_knowledge_base/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/george/Desktop/group16_workspace/build/rosplan_knowledge_base/test_results/rosplan_knowledge_base/rostest-test_launch_knowledge_base.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/george/Desktop/group16_workspace/src/ROSPlan/rosplan_knowledge_base --package=rosplan_knowledge_base --results-filename test_launch_knowledge_base.xml --results-base-dir \"/home/george/Desktop/group16_workspace/build/rosplan_knowledge_base/test_results\" /home/george/Desktop/group16_workspace/src/ROSPlan/rosplan_knowledge_base/test/launch/knowledge_base.test ")
subdirs("gtest")
