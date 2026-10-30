//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.business.user.quoterequest

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const QuoteRequestData = @import("org/allbinary/business/quoterequest/QuoteRequestData.zig").QuoteRequestData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const QuoteRequestIdGenerator = @import("org/allbinary/data/generator/QuoteRequestIdGenerator.zig").QuoteRequestIdGenerator;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlData = @import("org/allbinary/logic/communication/sql/AbSqlData.zig").AbSqlData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const QuoteRequest = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.quoterequest.QuoteRequest";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    id: ?*String = null,
    userName: ?*String = null,
    projectInfo: ?*String = null,
    userComments: ?*String = null,
    budget: ?*String = null,
    timeFrame: ?*String = null,
    comments: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.userName = null;
        this.projectInfo = null;
        this.userComments = null;
        this.budget = null;
        this.timeFrame = null;
        this.comments = null;
    }
    

    pub fn create2(userName: ?*String, request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const quoteRequestData: ?*QuoteRequestData = Inheritance.upcast(?*QuoteRequestData, QuoteRequestData.getInstance());
        this.id = Inheritance.upcast(@TypeOf(this.id), Inheritance.receiver(QuoteRequestIdGenerator.create(), "getNext").getNext());
        _ = Inheritance.call(this, "setUserName", .{ userName });
        _ = Inheritance.call(this, "setProjectInfo", .{ Inheritance.cast(?*String, Inheritance.call(request.?, "getParameter", .{ quoteRequestData.?.PROJECT_INFO })) });
        _ = Inheritance.call(this, "setUserComments", .{ Inheritance.cast(?*String, Inheritance.call(request.?, "getParameter", .{ quoteRequestData.?.CUSTOMER_COMMENTS })) });
        _ = Inheritance.call(this, "setBudget", .{ Inheritance.cast(?*String, Inheritance.call(request.?, "getParameter", .{ quoteRequestData.?.BUDGET })) });
        _ = Inheritance.call(this, "setTimeFrame", .{ Inheritance.cast(?*String, Inheritance.call(request.?, "getParameter", .{ quoteRequestData.?.TIMEFRAME })) });
        _ = Inheritance.call(this, "setComments", .{ Inheritance.cast(?*String, Inheritance.call(request.?, "getParameter", .{ quoteRequestData.?.COMMENTS })) });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Created with: "), this.toHashMap()), this, this.commonStrings.?.CONSTRUCTOR });
        }
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const quoteRequestData: ?*QuoteRequestData = Inheritance.upcast(?*QuoteRequestData, QuoteRequestData.getInstance());
        this.id = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ quoteRequestData.?.ID }));
        _ = Inheritance.call(this, "setUserName", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ UserData.USERNAME })) });
        _ = Inheritance.call(this, "setProjectInfo", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ quoteRequestData.?.PROJECT_INFO })) });
        _ = Inheritance.call(this, "setUserComments", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ quoteRequestData.?.CUSTOMER_COMMENTS })) });
        _ = Inheritance.call(this, "setBudget", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ quoteRequestData.?.BUDGET })) });
        _ = Inheritance.call(this, "setTimeFrame", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ quoteRequestData.?.TIMEFRAME })) });
        _ = Inheritance.call(this, "setComments", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ quoteRequestData.?.COMMENTS })) });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Created with: "), this.toHashMap()), this, this.commonStrings.?.CONSTRUCTOR });
        }
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (self.userName == null or self.userName.?.length() < 4 or self.userName.?.length() > 250) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (self.projectInfo == null or self.projectInfo.?.length() < 0 or self.projectInfo.?.length() > AbSqlData.MAXBLOB) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (self.userComments == null or self.userComments.?.length() < 0 or self.userComments.?.length() > AbSqlData.MAXBLOB) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (self.budget == null or self.budget.?.length() < 0 or self.budget.?.length() > AbSqlData.MAXBLOB) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (self.timeFrame == null or self.timeFrame.?.length() < 0 or self.timeFrame.?.length() > AbSqlData.MAXBLOB) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            if (self.comments == null or self.comments.?.length() < 0 or self.comments.?.length() > AbSqlData.MAXBLOB) {
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, self.commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (self.userName == null or self.userName.?.length() < 4 or self.userName.?.length() > 250) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a User Name with more than 4 characters.<br>") });
            }
            if (self.projectInfo == null or self.projectInfo.?.length() < 0 or self.projectInfo.?.length() > AbSqlData.MAXBLOB) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Please enter Project Info with less than "), AbSqlData.MAXBLOB), String.literal(" characters.<br>")) });
            }
            if (self.userComments == null or self.userComments.?.length() < 0 or self.userComments.?.length() > AbSqlData.MAXBLOB) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Please enter User Comments with less than "), AbSqlData.MAXBLOB), String.literal(" characters.<br>")) });
            }
            if (self.budget == null or self.budget.?.length() < 0 or self.budget.?.length() > AbSqlData.MAXBLOB) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Please enter Budget with less than "), AbSqlData.MAXBLOB), String.literal(" characters.<br>")) });
            }
            if (self.timeFrame == null or self.timeFrame.?.length() < 0 or self.timeFrame.?.length() > AbSqlData.MAXBLOB) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Please enter time frame with less than "), AbSqlData.MAXBLOB), String.literal(" characters.<br>")) });
            }
            if (self.comments == null or self.comments.?.length() < 0 or self.comments.?.length() > AbSqlData.MAXBLOB) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Please enter comments with less than "), AbSqlData.MAXBLOB), String.literal(" characters.<br>")) });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(values.?, "add", .{ self.id });
        _ = Inheritance.call(values.?, "add", .{ self.userName });
        _ = Inheritance.call(values.?, "add", .{ self.projectInfo });
        _ = Inheritance.call(values.?, "add", .{ self.userComments });
        _ = Inheritance.call(values.?, "add", .{ self.budget });
        _ = Inheritance.call(values.?, "add", .{ self.timeFrame });
        _ = Inheritance.call(values.?, "add", .{ self.comments });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(values.?, "add", .{ time });
        _ = Inheritance.call(values.?, "add", .{ time });
        return values;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const quoteRequestData: ?*QuoteRequestData = Inheritance.upcast(?*QuoteRequestData, QuoteRequestData.getInstance());
        const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(values.?, "put", .{ UserData.USERNAME, self.userName });
        _ = Inheritance.call(values.?, "put", .{ quoteRequestData.?.PROJECT_INFO, self.projectInfo });
        _ = Inheritance.call(values.?, "put", .{ quoteRequestData.?.CUSTOMER_COMMENTS, self.userComments });
        _ = Inheritance.call(values.?, "put", .{ quoteRequestData.?.BUDGET, self.budget });
        _ = Inheritance.call(values.?, "put", .{ quoteRequestData.?.TIMEFRAME, self.timeFrame });
        _ = Inheritance.call(values.?, "put", .{ quoteRequestData.?.COMMENTS, self.comments });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        return Inheritance.upcast(?*HashMap, values);
    }
    

    pub fn setUserName(self: *Self, value: ?*String) void {
        self.userName = value;
    }
    

    pub fn setProjectInfo(self: *Self, value: ?*String) void {
        self.projectInfo = value;
    }
    

    pub fn setUserComments(self: *Self, value: ?*String) void {
        self.userComments = value;
    }
    

    pub fn setBudget(self: *Self, value: ?*String) void {
        self.budget = value;
    }
    

    pub fn setTimeFrame(self: *Self, value: ?*String) void {
        self.timeFrame = value;
    }
    

    pub fn setComments(self: *Self, value: ?*String) void {
        self.comments = value;
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        if (self.comments == null) {
            self.comments = Inheritance.upcast(@TypeOf(self.comments), stringUtil.?.EMPTY_STRING);
        }
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn getProjectInfo(self: *Self) ?*String {
        return self.projectInfo;
    }
    

    pub fn getUserComments(self: *Self) ?*String {
        return self.userComments;
    }
    

    pub fn getBudget(self: *Self) ?*String {
        return self.budget;
    }
    

    pub fn getTimeFrame(self: *Self) ?*String {
        return self.timeFrame;
    }
    

    pub fn getComments(self: *Self) ?*String {
        return self.comments;
    }
};

