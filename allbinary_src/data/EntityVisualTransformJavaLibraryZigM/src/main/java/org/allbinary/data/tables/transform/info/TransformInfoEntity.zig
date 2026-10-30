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
// package org.allbinary.data.tables.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const Encoder = @import("org/allbinary/logic/control/crypt/Encoder.zig").Encoder;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoFactoryInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoFactoryInterface.zig").TransformInfoFactoryInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TransformInfoObjectConfigAndManipulatorFactoryBase = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryBase.zig").TransformInfoObjectConfigAndManipulatorFactoryBase;
const TransformInfoObjectConfigGeneratorFactoryInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactoryInterface.zig").TransformInfoObjectConfigGeneratorFactoryInterface;
const TransformInfoEntityInterface = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityInterface.zig").TransformInfoEntityInterface;

pub const TransformInfoEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.transform.info.TransformInfoEntity";
    pub const java_interfaces = .{ TransformInfoEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    transformInfoFactoryInterface: ?*TransformInfoFactoryInterface = null,
    transformInfoObjectConfigAndManipulatorFactoryInterface: ?*TransformInfoObjectConfigAndManipulatorFactoryBase = null,
    transformInfoObjectConfigGeneratorFactoryInterface: ?*TransformInfoObjectConfigGeneratorFactoryInterface = null,
    // Implements TransformInfoEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("transforminfo");
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        
        
    }
    

    pub fn create3(transformInfoObjectConfigGeneratorFactoryInterface: ?*TransformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface: ?*TransformInfoObjectConfigAndManipulatorFactoryBase, transformInfoFactoryInterface: ?*TransformInfoFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.tableName });
        this.transformInfoObjectConfigGeneratorFactoryInterface = transformInfoObjectConfigGeneratorFactoryInterface;
        this.transformInfoObjectConfigAndManipulatorFactoryInterface = transformInfoObjectConfigAndManipulatorFactoryInterface;
        this.transformInfoFactoryInterface = transformInfoFactoryInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        { // try
            _ = Inheritance.call(&self.base, "insert", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, INSERT });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, INSERT, e });
//             }
    }
    

    pub fn delete(self: *Self, value: ?*String) void {
        { // try
            _ = Inheritance.call(&self.base, "deleteWhere", .{ TransformInfoData.getInstance().?.NAME, value });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, Inheritance.fieldPointer(self, "commonStrings").*.?.delete });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.delete, e });
//             }
    }
    

    // throws Exception
    pub fn get(self: *Self, name: ?*String, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface {
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(keysAndValues.?, "put", .{ transformInfoData.?.NAME, name });
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ keysAndValues }));
        if (hashMap != null) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTCONFIG }));
            if (anyType != null) {
                const string: ?*String = Inheritance.cast(?*String, anyType);
                _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.OBJECTCONFIG, Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(Encoder, "decode", .{ string }) }) });
            }
            const objectData: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.DATA }));
            if (objectData != null) {
                const string: ?*String = Inheritance.cast(?*String, objectData);
                _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.DATA, Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(Encoder, "decode", .{ string }) }) });
            }
            return Inheritance.upcast(?*TransformInfoInterface, Inheritance.call(self.transformInfoFactoryInterface.?, "getInstance", .{ hashMap, propertiesHashMap, pageContext }));
        } else {
            return null;
        }
    }
    

    // throws Exception
    pub fn getObjectConfigs(self: *Self, storeName: ?*String) ?*BasicArrayList {
        const objectConfigVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const objectConfigColumnVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getColumnWhere", .{ TransformInfoData.getInstance().?.OBJECTCONFIG, StoreFrontData.getInstance().?.NAME, storeName }));
        const size: i32 = objectConfigColumnVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            var objectConfigString: ?*String = Inheritance.cast(?*String, Inheritance.call(objectConfigColumnVector.?, "get", .{ i }));
            objectConfigString = Inheritance.callStatic(String, "create1", .{ Inheritance.callStatic(Encoder, "decode", .{ objectConfigString }) });
            _ = Inheritance.call(objectConfigVector.?, "add", .{ Inheritance.call(self.transformInfoObjectConfigAndManipulatorFactoryInterface.?, "getInstance", .{ self.abeClientInformation, Inheritance.cast(?*TransformInfoInterface, self), Inheritance.callStatic(DomDocumentHelper, "create", .{ objectConfigString }) }) });
            }
        }
        return objectConfigVector;
    }
    

    // throws Exception
    pub fn getNames(self: *Self, storeName: ?*String) ?*BasicArrayList {
        const viewNameVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const columnVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getColumnWhere", .{ TransformInfoData.getInstance().?.NAME, StoreFrontData.getInstance().?.NAME, storeName }));
        const size: i32 = columnVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const viewNameString: ?*String = Inheritance.cast(?*String, Inheritance.call(columnVector.?, "get", .{ i }));
            _ = Inheritance.call(viewNameVector.?, "add", .{ viewNameString });
            }
        }
        return viewNameVector;
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ StoreFrontData.getInstance().?.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.OBJECTFILENAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.OBJECT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.OBJECTCONFIGFILENAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.OBJECTCONFIG });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.TEMPLATEFILENAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.TEMPLATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.DATAFILENAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.DATA });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.LASTMODIFIED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ EntryData.getInstance().?.TIMECREATED });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ transformInfoData.?.NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
    

    pub fn update(self: *Self, updatedValues: ?*HashMap) void {
        _ = Inheritance.call(&self.base, "updateWhere", .{ TransformInfoData.getInstance().?.NAME, Inheritance.cast(?*String, Inheritance.call(updatedValues.?, "get", .{ TransformInfoData.getInstance().?.NAME })), updatedValues });
    }
    

    pub fn dropTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
};

