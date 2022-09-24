// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;


contract ToDoList {

    // User defined variable
    struct Task{
        uint Id;
        string data;
        bool isCompleted;
    }

    // Creating an array to store the tasks.
    Task[] private tasks;

    // Adding a task. 
    function addTask(string memory _task) public{
        tasks.push(Task(tasks.length, _task, false));
    }

    // Fetching a individual tasks from the array. 
    function getTasks(uint _id) public view returns (uint, string memory, bool){
        return (
            tasks[_id].Id,
            tasks[_id].data,
            tasks[_id].isCompleted
        );
    }

    // Matking the task as completed. 
    function taskDone(uint _id) public{
        tasks[_id].isCompleted = true;
    }

    // Fetching the complete array of Tasks. 
    function getTasks() public view returns(Task[] memory){
        return tasks;
    }
}
