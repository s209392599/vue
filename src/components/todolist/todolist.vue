<template>
    <div id="">
        <div class="home-page">
            <router-link to="/">回首页</router-link>
            <br />
            <br />
        </div>
        <form v-on:submit.prevent="addNewTodo">
            <label for="new-todo">Add a todo</label>
            <input
              v-model="newTodoText"
              id="new-todo"
              placeholder="添加事项"
              autocomplete="off"
            >
            <button>Add</button>
        </form>
        <ul id="todoItemBox">
            <li
                is="todo-item"
                v-for="(todo, index) in todos"
                v-bind:key="todo.id"
                v-bind:title="todo.title"
                v-on:remove="todos.splice(index, 1)">
            </li>
        </ul>
    </div>
</template>

<script>
import Vue from 'vue'
Vue.component('todo-item', {
    template:`<li>{{ title }}--<button @click="$emit('remove')">删除</button></li>`,
    props: ['title']
})

export default {
    name: 'todolist',
    data () {
        return {
            newTodoText: '',
            todos: [
                {
                    id: 1,
                    title: '第一项',
                },
                {
                    id: 2,
                     title: '第二项',
                },
                {
                    id: 3,
                    title: '第三项'
                }
            ],
            nextTodoId: 4
        }
    },
    methods: {
        addNewTodo: function () {
            this.todos.push({
                id: this.nextTodoId++,
                title: this.newTodoText
            })
            this.newTodoText = ''
        }
    }
}

</script>

<style lang="stylus">
.home-page
    font-size 30px
#todoItemBox
    font-size 20px
#new-todo
    display inline-block
    height 34px
    line-height 34px
    border 1px solid #000
</style>
