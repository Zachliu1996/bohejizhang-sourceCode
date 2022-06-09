import recordStore from '@/store/recordStore'
import tagListModel from '@/models/tagListModel'
import tagStore from '@/store/tagStore'

const store = {
  ...recordStore,
  ...tagStore,
};

export default store;