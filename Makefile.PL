use inc::Module::Install;
name 'Net-Hadoop-DFSAdmin-ReportParser';
all_from 'lib/Net/Hadoop/DFSAdmin/ReportParser.pm';

requires 'Test::More';
tests 't/*.t';
test_requires 'Test::More';

auto_set_repository;

WriteAll;
