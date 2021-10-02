

#include "../inc/parser.h"
#include "../inc/assembler.h"


int main(int argc, char* argv[]){

    if(argc != 4){
        std::cout << "ERROR starting, two params required" << std::endl;
        return 1;
    }

    std::string input_filename = argv[3];
    std::string output_filename = argv[2];

    Parser* parser = new Parser(input_filename);

    Assembler* as = new Assembler(parser, output_filename);

    as->first_pass();
    as->second_pass();

    delete as;
    delete parser;

    return 0;
}