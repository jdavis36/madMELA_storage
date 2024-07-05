import madgraph.core.drawing as drawing

def remove_diag(diag, model):
    """remove all diagram with quark in T-channel"""

    #diag is a Direct Accyclic Graph of the Feynman diagram
    #convert it to a full graph (the one we used for the plotting)
    #In that representation each vertex is associated to all the legs/particle and we can move quite freely inside the diagram
    # The structure representation is simpler and should help to apply complex filtering

    draw = drawing.FeynmanDiagram(diag, model)
    draw.load_diagram()   
    # Diagram content  can be loop over three list:
    #  - all vertex of diagram (note that for each external particle we have a vertex with a single particle attached to it)
    #    for v in draw.vertexList:
    #  - all vertex corresponding to the initial/final state particles
    #    for v in draw.initial_vertex:
    # - all the particles (initial states / final states and propagator) of the diagram
    #    for p in draw.lineList
    #
    # All vertex can be assigned to a level by running
    draw.define_level()
    #      0: correspond to the initial state vertex
    #      1: correspond to the T-channel level
    #   you can use draw._debug_level() to text representation in that case
    #   For a single line the "begin" level will always be one level lower than the "end" level
    #    BUT for t-channel where both are equal and set to 1
    #print(draw.load_diagram())
    #
    # All vertex are of type VertexPoint
    #   They have only two relevant attributes
    #      self.lines : all the particle connecting to this vertex
    #      self.level : level of this vertex (see above)
    #
    # All particles are of type FeynmanLine
    #   They have the following relevant attributes
    #       self.begin: vertex associated to the beginning of the particles
    #       self.end:  vertex associated to the end of the particles
    #       self.get('id'): pdg code
    #       self.get('number'): number associated to the original DAG
    #       other attributes are ['polarization', 'number', 'onshell', 'state', 'model', 'from_group', 'loop_line']

    ### Filter out Higgs for Bkg Only ####
    for v in draw.vertexList:
      hasH=False
      for p in v.lines:
        ##Hll check 
        if abs(p.id) == 25:
          hasH=True
        if hasH:
          return True
    ### End Filter Bkg_Only qqH 

    ## Filter out Background events ####
    #hasH=False
    #for v in draw.vertexList:
    #  for p in v.lines:
    #    ##Hll check 
    #    if abs(p.id) == 25:
    #      hasH=True
    #    if hasH:
    #      return False
    #if not hasH:
    #  return True
    # End Filter Sig_Only qqH 
   
    return False
