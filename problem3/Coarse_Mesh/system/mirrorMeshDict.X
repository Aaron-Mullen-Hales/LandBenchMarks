FoamFile
{
version     2.0;
format      ascii;
class       dictionary;
object      mirrorMeshDict;
}

planeType       pointAndNormal;

pointAndNormalDict
{
    point   (0 0 0);
    normal  (-1 0 0);
}

planeTolerance  1e-6;
