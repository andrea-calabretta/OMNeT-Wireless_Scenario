import inet.common.INETDefs;
import inet.networklayer.common.L3Address;
import inet.common.packet.chunk.Chunk;

namespace inet;

class backChunk extends FieldsChunk{
    chunkLength = B(8); //Chunk Length
    B lengthField = B(2); //Chunk field length
	L3Address src; //Source Address
	L3Address dst; //Destination Address
	int seq = 0; //Sequence Number
}