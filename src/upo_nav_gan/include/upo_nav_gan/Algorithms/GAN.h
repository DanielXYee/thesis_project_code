#ifndef UPO_GAN_
#define UPO_GAN_


#include <vector>
#include <queue>
#include <cmath>
#include <stdio.h>
#include <iostream>
#include <sys/time.h>


#include <upo_nav_gan/Learner.h>


using namespace std;


namespace upo_gan
{
	class GAN : public upo_gan::Learner
	{

		public:
			GAN(upo_gan::Planning* p, bool norm, float alpha, float inc, int rep);
			~GAN();

			//void setup();

			//bool loadData(string dir);

			//void setScenario(int i);

			//vector<path_point> makePlan(path_point goal, int planner_type);

			vector<float> run_trajectory_diff(int i); 

			/*virtual setGoal(path_point g) {
				goal_  = g;
			};*/

			//void setWeights(vector<float> w);

			//void calculateFeatureCountDemos();

			vector<float> updateWeights(vector<float> current_weights, vector<float> fc_diff);

			void updateParamsIter();

			//vector<float> getFeatureCount(vector<path_point> path);

			//vector<float> getFeatureCount(int i);

			//vector<float> getGradients(float base);



		private:

			float			alpha_;

			float			stabilizer_;
			float			stab_incr_;

			int				rrt_repetitions_;		

	};
	
}
#endif
