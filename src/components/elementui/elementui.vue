<template>
    <div>
        <div class="home-page">
            <router-link to="/">回首页</router-link>
        </div>
        <div><a style="font-size:20px;" href="http://element-cn.eleme.io/#/zh-CN/component/select">点击进入中文文档地址</a></div><br />
        <div>
            <p>以下是layout布局</p>
          <el-row>
            <el-col :span="24"><div class="grid-content bg-purple-dark"></div></el-col>
          </el-row>
          <el-row>
            <el-col :span="12"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="12"><div class="grid-content bg-purple-light"></div></el-col>
          </el-row>
          <el-row>
            <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="8"><div class="grid-content bg-purple-light"></div></el-col>
            <el-col :span="8"><div class="grid-content bg-purple"></div></el-col>
          </el-row>
          <el-row>
            <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="6"><div class="grid-content bg-purple-light"></div></el-col>
            <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="6"><div class="grid-content bg-purple-light"></div></el-col>
          </el-row>
          <el-row>
            <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="4"><div class="grid-content bg-purple-light"></div></el-col>
            <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="4"><div class="grid-content bg-purple-light"></div></el-col>
            <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="4"><div class="grid-content bg-purple-light"></div></el-col>
          </el-row>
        </div>
        <br />
        <div>
            <p>select选择器</p>
            <el-switch
              v-model="value3"
              active-text="按月付费"
              inactive-text="按年付费">
            </el-switch>
            <el-switch
              style="display: block"
              v-model="value4"
              active-color="#13ce66"
              inactive-color="#ff4949"
              active-text="按月付费"
              inactive-text="按年付费">
            </el-switch>
        </div>
        <br />
        <div>
            <p>日期选择器</p>
            <div class="block">
                <span class="demonstration">默认</span>
                <el-date-picker
                  v-model="value1"
                  type="date"
                  placeholder="选择日期">
                </el-date-picker>
              </div>
              <div class="block">
                <span class="demonstration">带快捷选项</span>
                <el-date-picker
                  v-model="value2"
                  align="right"
                  type="date"
                  placeholder="选择日期"
                  :picker-options="pickerOptions1">
                </el-date-picker>
              </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'elementui',
        data() {
            return {
                value3: true,
                value4: true,
                pickerOptions1: {
                  disabledDate(time) {
                    return time.getTime() > Date.now();
                  },
                  shortcuts: [{
                    text: '今天',
                    onClick(picker) {
                      picker.$emit('pick', new Date());
                    }
                  }, {
                    text: '昨天',
                    onClick(picker) {
                      const date = new Date();
                      date.setTime(date.getTime() - 3600 * 1000 * 24);
                      picker.$emit('pick', date);
                    }
                  }, {
                    text: '一周前',
                    onClick(picker) {
                      const date = new Date();
                      date.setTime(date.getTime() - 3600 * 1000 * 24 * 7);
                      picker.$emit('pick', date);
                    }
                  }]
                },
                value1: '',
                value2: '',
            }
        }
    }
</script>

<style lang="stylus" scoped>
.home-page
    font-size 50px
    color red

.el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  .el-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
.el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  .el-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
</style>
