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
// package org.allbinary.logic.communication.sql.connection.pool

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Connection = @import("java/sql/Connection.zig").Connection;
// const DriverManager = @import("java/sql/DriverManager.zig").DriverManager;
// const SQLException = @import("java/sql/SQLException.zig").SQLException;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const SqlConnectionPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool";
    logUtil: ?*LogUtil = null,
    stdUtil: ?*StdUtil = null,
    connectionHashMap: ?*HashMap = null,
    FIRST_NEW_CONNECTION_CREATED: ?*String = null,
    FIRST: ?*String = null,
    NEW_CONNECTION_FOR: ?*String = null,
    CREATED: ?*String = null,
    NUMBER_OF_SQL_CONNECTIONS_FOR: ?*String = null,
    NUMBER_OF_SQL_CONNECTION_VECTORS: ?*String = null,
    IS: ?*String = null,
    CONNECTION_ALLREADY_CLOSED: ?*String = null,
    METHOD_GET: ?*String = null,
    METHOD_ADD: ?*String = null,
    var instance: ?*SqlConnectionPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SqlConnectionPool.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.stdUtil = Inheritance.upcast(?*StdUtil, StdUtil.getInstance());
        this.connectionHashMap = null;
        this.FIRST_NEW_CONNECTION_CREATED = String.literal("First New Connection Created: ");
        this.FIRST = String.literal("First ");
        this.NEW_CONNECTION_FOR = String.literal("New Connection For ");
        this.CREATED = String.literal(" Created");
        this.NUMBER_OF_SQL_CONNECTIONS_FOR = String.literal("Number Of Sql Connections for: ");
        this.NUMBER_OF_SQL_CONNECTION_VECTORS = String.literal("Number Of Sql Connection Vectors: ");
        this.IS = String.literal(" is ");
        this.CONNECTION_ALLREADY_CLOSED = String.literal("Connection AllReady Closed");
        this.METHOD_GET = String.literal("get()");
        this.METHOD_ADD = String.literal("add()");
    }
    

    pub fn getInstance() ?*SqlConnectionPool {
        return Inheritance.upcast(?*SqlConnectionPool, SqlConnectionPool.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws SQLException
    pub fn get(self: *Self, url: ?*String) ?*Connection {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (self.connectionHashMap == null) {
            self.connectionHashMap = Inheritance.upcast(@TypeOf(self.connectionHashMap), self.stdUtil.?.createHashMap());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGPOOL })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.FIRST_NEW_CONNECTION_CREATED, url), self, self.METHOD_GET });
            }
            return Inheritance.upcast(?*Connection, Inheritance.callStatic(DriverManager, "getConnection", .{ url }));
        } else {
            var connectionVector: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(self.connectionHashMap.?, "get", .{ url }));
            if (connectionVector == null) {
                connectionVector = Inheritance.upcast(@TypeOf(connectionVector), BasicArrayListD.create());
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGPOOL })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.FIRST });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.NEW_CONNECTION_FOR });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ url });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.CREATED });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET });
                }
                return Inheritance.upcast(?*Connection, Inheritance.callStatic(DriverManager, "getConnection", .{ url }));
            } else if (connectionVector.?.size() == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGPOOL })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.NEW_CONNECTION_FOR }).?, "append", .{ url }).?, "append", .{ self.CREATED }))), self, self.METHOD_GET });
                }
                return Inheritance.upcast(?*Connection, Inheritance.callStatic(DriverManager, "getConnection", .{ url }));
            } else {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                const size: i32 = connectionVector.?.size();
                {
                    var i: i32 = 0;
                    while (i < size) : (i += 1) {
                    const sqlConnection: ?*Connection = Inheritance.cast(?*Connection, Inheritance.call(connectionVector.?, "get", .{ i }));
                    if (!sqlConnection.?.isClosed()) {
                        _ = Inheritance.call(connectionVector.?, "remove", .{ sqlConnection });
                        _ = Inheritance.call(self.connectionHashMap.?, "put", .{ url, connectionVector });
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGPOOL })) {
                            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                            _ = Inheritance.call(stringBuffer.?, "append", .{ self.NUMBER_OF_SQL_CONNECTIONS_FOR });
                            _ = Inheritance.call(stringBuffer.?, "append", .{ url });
                            _ = Inheritance.call(stringBuffer.?, "append", .{ self.IS });
                            _ = Inheritance.call(stringBuffer.?, "appendint", .{ connectionVector.?.size() });
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.NUMBER_OF_SQL_CONNECTION_VECTORS, self.connectionHashMap.?.size()), self, self.METHOD_GET });
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET });
                        }
                        return Inheritance.cast(?*Connection, sqlConnection);
                    }
                    }
                }
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGPOOL })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.NEW_CONNECTION_FOR });
            _ = Inheritance.call(stringBuffer.?, "append", .{ url });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.CREATED });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET });
        }
        return Inheritance.upcast(?*Connection, Inheritance.callStatic(DriverManager, "getConnection", .{ url }));
    }
    

    // throws SQLException
    pub fn add(self: *Self, url: ?*String, sqlConnection: ?*Connection) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!sqlConnection.?.isClosed()) {
            var connectionVector: ?*BasicArrayList = null;
            if (self.connectionHashMap == null) {
                self.connectionHashMap = Inheritance.upcast(@TypeOf(self.connectionHashMap), self.stdUtil.?.createHashMap());
                connectionVector = Inheritance.upcast(@TypeOf(connectionVector), BasicArrayListD.create());
                _ = Inheritance.call(connectionVector.?, "add", .{ sqlConnection });
            } else {
                connectionVector = Inheritance.cast(?*BasicArrayList, Inheritance.call(self.connectionHashMap.?, "get", .{ url }));
                if (connectionVector == null) {
                    connectionVector = Inheritance.upcast(@TypeOf(connectionVector), BasicArrayListD.create());
                }
                _ = Inheritance.call(connectionVector.?, "add", .{ sqlConnection });
                _ = Inheritance.call(self.connectionHashMap.?, "put", .{ url, connectionVector });
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGPOOL })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.NUMBER_OF_SQL_CONNECTIONS_FOR });
                _ = Inheritance.call(stringBuffer.?, "append", .{ url });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.IS });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ connectionVector.?.size() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.NUMBER_OF_SQL_CONNECTION_VECTORS, self.connectionHashMap.?.size()), self, self.METHOD_ADD });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_ADD });
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGPOOL })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.CONNECTION_ALLREADY_CLOSED, self, self.METHOD_ADD });
        }
    }
};

