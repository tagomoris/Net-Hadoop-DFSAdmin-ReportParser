# Net::Hadoop::DFSAdmin::ReportParser

* http://github.com/tagomoris/Net-Hadoop-DFSAdmin-ReportParser

## DESCRIPTION

Parser module for output of 'hadoop dfsadmin -report'.

    use strict;
    use warnings;
    use Net::Hadoop::DFSAdmin::ReportParser;
    
    open($fh, '-|', 'hadoop', 'dfsadmin', '-report')
        or die "failed to execute 'hadoop dfsadmin -report'";
    my @lines = <$fh>;
    close($fh);

    my $r = Net::Hadoop::DFSAdmin::ReportParser->parse(@lines);

### Results

    $VAR1 = {
          'capacity_configured' => '35339596017664',
          'capacity_present' => '33022305342866',
          'capacity' => '33022305342866', # perfectly same as capacity_present
          
          'used' => '18601463580050',
          'used_percent' => '56.33',
          'used_non_dfs_total' => '2317290674798',
          'used_non_dfs_total_percent' => '6.56',
          
          'remaining' => '14420841762816',
          'remaining_percent' => '40.81',
          'datanode_remaining_min' => '1569816522752',
          'datanode_remaining_max' => '1629772095488',
          
          'blocks_with_corrupt_replicas' => '6',
          'blocks_under_replicated' => '15'
          'blocks_missing' => '0',
          
          'datanodes_num' => '9',
          'datanodes_available' => '9',
          'datanodes_dead' => '0',
          'datanodes' => [
                           {
                             'name' => '10.0.0.1:50010',
                             'status' => 'normal',
                             'capacity_configured' => '3905711992832'
                             'used_dfs' => '2059255336448',
                             'used_percent' => '52.72',
                             'used_non_dfs' => '268170412544',
                             'remaining' => '1578286243840',
                             'remaining_percent' => '40.41',
                             'last_connect' => 'Wed Feb 01 12:56:17 JST 2012',
                           },
                           # ...
                         ],
        };

* * * * *

## License

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
