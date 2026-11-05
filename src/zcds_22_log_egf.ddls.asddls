@AccessControl.authorizationCheck: #NOT_REQUIRED
define hierarchy zcds_22_log_egf
  as parent child hierarchy(
    source zcds_21_log_egf
    child to parent association _Manager
    start where
      Manager is initial
    siblings order by
      Employee
    multiple parents allowed
    orphans ignore
    cycles breakup cache on
  )
{
  key Employee,
      Manager,
      Name,
      $node.parent_id             as ParentId,
      $node.node_id               as NodeId,
      $node.hierarchy_is_cycle    as HisCycle,
      $node.hierarchy_is_orphan   as HisOrphan,
      $node.hierarchy_level       as HLevel,
      $node.hierarchy_parent_rank as parentRank,
      $node.hierarchy_rank        as Rank,
      $node.hierarchy_tree_size   as HTreeSize
}
