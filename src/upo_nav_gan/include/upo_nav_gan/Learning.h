
#ifndef UPO_GAN_LEARNING_
#define UPO_GAN_LEARNING_


#include <vector>
#include <queue>
#include <cmath>
#include <iostream>
#include <sys/time.h>
#include <functional>   // std::plus, std::minus
#include <algorithm>    // std::transform
//Read/write a file
#include <iostream>
#include <fstream>
#include <string>
#include <stdio.h>      /* printf, scanf, puts, NULL */
#include <stdlib.h>
#include <time.h>
#include <dirent.h> //mkdir
#include <sys/types.h>
#include <sys/stat.h>
#include <numeric>      // std::accumulate

#include <upo_nav_gan/Learner.h>
#include <upo_nav_gan/Algorithms/GAN.h>
//#include <upo_nav_irl/Algorithms/RLT.h>
//#include <upo_nav_irl/Algorithms/MMP.h>


using namespace std;

namespace upo_gan
{
	class Learning
	{
	
		public:

			Learning();
			Learning(upo_gan::Learner* l, int ep, int bs, bool nw, bool ri, string save_dir);

			~Learning();

			//void setup(int ep, int bs);

			void runLearning();

		private:

			upo_gan::Learner* 		learner_; //RTIRL, RLT or MMP

			int 					epochs_;

			int						batch_size_;

			vector<float>			weights_;
			bool					normalize_weights_;
			bool					random_initialization_;

			string					save_dir_;

	};
	
}
#endif
