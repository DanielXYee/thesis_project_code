
#include <upo_nav_gan/Learner.h>


/*upo_irl::Learner::Learner(upo_irl::Planning* p)
{
	planning_ = p;
}*/

upo_gan::Learner::Learner()
{
}


upo_gan::Learner::~Learner() {

}



vector<float> upo_gan::Learner::initializeWeights(bool random, bool normalize)
{
	vector<float> w = planning_->initializeWeights(random, normalize);
	features_number_ = (int)w.size(); // xy. update the features_number_ value
	
	return w;

}


bool upo_gan::Learner::loadData()
{
	return planning_->loadData();
}



vector<float> upo_gan::Learner::makePlanAndCount(int i, int planner_type) {
	return planning_->makePlanAndCount(i, planner_type);
}





