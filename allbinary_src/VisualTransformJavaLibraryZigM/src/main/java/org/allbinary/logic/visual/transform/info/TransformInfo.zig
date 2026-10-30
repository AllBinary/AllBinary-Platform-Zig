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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Encoder = @import("org/allbinary/logic/control/crypt/Encoder.zig").Encoder;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const OutputTypeData = @import("org/allbinary/logic/io/OutputTypeData.zig").OutputTypeData;
const AbFilePath = @import("org/allbinary/logic/io/path/AbFilePath.zig").AbFilePath;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TransformInfoDataData = @import("org/allbinary/logic/visual/transform/info/data/TransformInfoDataData.zig").TransformInfoDataData;
const TransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig.zig").TransformInfoObjectConfig;
const TransformInfoObjectConfigAndManipulatorFactory = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactory.zig").TransformInfoObjectConfigAndManipulatorFactory;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;
const TransformInfoTemplateData = @import("org/allbinary/logic/visual/transform/info/template/TransformInfoTemplateData.zig").TransformInfoTemplateData;
const TransformInfoObjectData = @import("org/allbinary/logic/visual/transform/info/viewObject/TransformInfoObjectData.zig").TransformInfoObjectData;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const TransformInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfo";
    pub const java_interfaces = .{ TransformInfoInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    isChild: bool = false,
    name: ?*String = null,
    storeName: ?*String = null,
    objectFileName: ?*String = null,
    anyType: ?Object = null,
    objectConfigFileName: ?*String = null,
    objectConfigInterface: ?*TransformInfoObjectConfigInterface = null,
    template: ?*String = null,
    templateFileName: ?*String = null,
    dataFileName: ?*String = null,
    data: ?*String = null,
    // Implements TransformInfoInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        this.isChild = false;
        this.name = null;
        this.storeName = null;
        this.objectFileName = null;
        this.anyType = null;
        this.objectConfigFileName = null;
        this.objectConfigInterface = null;
        this.template = null;
        this.templateFileName = null;
        this.dataFileName = null;
        this.data = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        return this;
    }
    

    pub fn create5(name: ?*String, objectFileName: ?*String, objectConfigFileName: ?*String, templateFileName: ?*String, dataFileName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "setObjectFile", .{ objectFileName });
        _ = Inheritance.call(this, "setObjectConfigFile", .{ objectConfigFileName });
        _ = Inheritance.call(this, "setTemplateFile", .{ templateFileName });
        _ = Inheritance.call(this, "setDataFile", .{ dataFileName });
        return this;
    }
    

    // throws Exception
    pub fn override(self: *Self, hashMap: ?*HashMap) void {
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        const aName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.NAME }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aName })) {
            self.name = aName;
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TransformInfo properties overridden for: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\n properties: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(hashMap)) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("override(HashMap hashMap)") });
        }
        const aStoreName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aStoreName })) {
            self.storeName = aStoreName;
        }
        const aObjectFileName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTFILENAME }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aObjectFileName })) {
            self.objectFileName = aObjectFileName;
        }
        var stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.storeName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        const fileAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
        const aObject: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECT }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aObject })) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TransformInfo override view Object for: "), self.getName()), self, String.literal("override(HashMap hashMap)") });
            }
            const fileDataString: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoObjectData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoObjectData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(fileAbPath)), aObject }) }));
            if (fileDataString != null) {
                self.anyType = Inheritance.upcast(@TypeOf(self.anyType), fileDataString);
            }
        }
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTCONFIG })) })) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TransformInfo override ObjectConfig for: "), self.getName()), self, String.literal("override(HashMap hashMap)") });
            }
            _ = Inheritance.call(self, "setObjectConfig", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTCONFIG })) });
        }
        const objectConfigFileName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTCONFIGFILENAME }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ objectConfigFileName })) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TransformInfo override ObjectConfig File for: "), self.getName()), self, String.literal("override(HashMap hashMap)") });
            }
            _ = Inheritance.call(self, "setObjectConfigFile", .{ objectConfigFileName });
        }
        const @"type": ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ OutputTypeData.getInstance().?.NAME }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ @"type" })) {
            if (self.getObjectConfigInterface() == null) {
                _ = Inheritance.call(self, "setObjectConfigInterface", .{ Inheritance.callStatic(TransformInfoObjectConfig, "create1", .{ self }) });
            }
            _ = Inheritance.call(self.getObjectConfigInterface().?, "setOutputTypeName", .{ @"type" });
        }
        const aTemplateFileName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.TEMPLATEFILENAME }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aTemplateFileName })) {
            self.templateFileName = aTemplateFileName;
        }
        const aTemplate: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.TEMPLATE }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aTemplate })) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TransformInfo override Template for: "), self.getName()), self, String.literal("override(HashMap hashMap)") });
            }
            const fileDataString: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoTemplateData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoTemplateData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(fileAbPath)), aTemplate }) }));
            if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ fileDataString })) {
                self.template = fileDataString;
            }
        }
        const aDataFileName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.DATAFILENAME }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aDataFileName })) {
            self.dataFileName = aDataFileName;
        }
        const aData: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.DATA }));
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ aData })) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("TransformInfo override Data for: "), self.getName()), self, String.literal("override(HashMap hashMap)") });
            }
            const fileDataString: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoDataData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoDataData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(fileAbPath)), aData }) }));
            if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ fileDataString })) {
                self.data = fileDataString;
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            stringBuffer = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ aName });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nTemp Object File: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ aObject });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nTemp Object Config File: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getObjectConfigFilePath())) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nTemp Template File: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ aTemplate });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nTemp Data File: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ aData });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nStore Name: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ aStoreName });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nObjectFile: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.getObjectFile() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("->TransformInfo") });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("TransformInfoInterface(HashMap)") });
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.log(), self, String.literal("override") });
        }
    }
    

    pub fn log(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.name });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nObject File: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.objectFileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nObject Config File Path: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getObjectConfigFile() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nTemplate File: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.templateFileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nData File: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.dataFileName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nStore Name: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.storeName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getObjectFile() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("->TransformInfo") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TransformInfoInterface(HashMap)") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return self.storeName;
    }
    

    pub fn setObject(self: *Self, anyType: ?Object) void {
        self.anyType = anyType;
    }
    

    pub fn setObjectFile(self: *Self, value: ?*String) void {
        self.objectFileName = value;
    }
    

    pub fn setTemplate(self: *Self, value: ?*String) void {
        self.template = value;
    }
    

    pub fn setTemplateFile(self: *Self, value: ?*String) void {
        self.templateFileName = value;
    }
    

    // throws Exception
    pub fn setObjectConfigFileName(self: *Self, value: ?*String) void {
        self.objectConfigFileName = value;
    }
    

    // throws Exception
    pub fn setObjectConfigFile(self: *Self, value: ?*String) void {
        self.objectConfigFileName = value;
        _ = Inheritance.call(self, "setObjectConfigInterface", .{ Inheritance.call(TransformInfoObjectConfigAndManipulatorFactory.getInstance().?, "getInstance", .{ self.abeClientInformation, self, self.getObjectConfigFilePath() }) });
    }
    

    // throws Exception
    pub fn setObjectConfig(self: *Self, value: ?*String) void {
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ value }));
        _ = Inheritance.call(self, "setObjectConfigInterface", .{ Inheritance.call(TransformInfoObjectConfigAndManipulatorFactory.getInstance().?, "getInstance", .{ self.abeClientInformation, self, document }) });
    }
    

    pub fn setDataFile(self: *Self, value: ?*String) void {
        self.dataFileName = value;
    }
    

    pub fn setData(self: *Self, value: ?*String) void {
        self.data = value;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getObject(self: *Self) ?Object {
        return self.anyType;
    }
    

    pub fn getObjectFile(self: *Self) ?*String {
        return self.objectFileName;
    }
    

    pub fn getTemplate(self: *Self) ?*String {
        return self.template;
    }
    

    pub fn getTemplateFile(self: *Self) ?*String {
        return self.templateFileName;
    }
    

    // throws Exception
    pub fn getTemplateFilePath(self: *Self) ?*AbPath {
        return Inheritance.upcast(?*AbPath, Inheritance.callStatic(AbFilePath, "create1", .{ self.getTemplateFile() }));
    }
    

    // throws Exception
    pub fn getObjectConfigFilePath(self: *Self) ?*AbPath {
        return Inheritance.upcast(?*AbPath, Inheritance.callStatic(AbFilePath, "create1", .{ self.getObjectConfigFile() }));
    }
    

    // throws Exception
    pub fn getDataFilePath(self: *Self) ?*AbPath {
        return Inheritance.upcast(?*AbPath, Inheritance.callStatic(AbFilePath, "create1", .{ self.getDataFile() }));
    }
    

    pub fn getObjectConfigFile(self: *Self) ?*String {
        return self.objectConfigFileName;
    }
    

    pub fn getData(self: *Self) ?*String {
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        const dataFileString: ?*String = Inheritance.upcast(?*String, self.getDataFile());
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ dataFileString })) {
            { // try
                const fileData: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoDataData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoDataData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ self.getDataFilePath() }));
                if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ self.data })) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Data File overriding existing data: "), self.getDataFilePath()), self, String.literal("getData()") });
                    }
                }
                self.data = fileData;
            }
            // catch (Exception e):
//                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                     _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Could Not Load Data from: "), self.getDataFile()), self, String.literal("getData()"), e });
//                 }
        }
        { // try
            if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ self.data })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Data: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ Inheritance.callStatic(DomDocumentHelper, "create", .{ self.data }) })), self, String.literal("getData()") });
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.name });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nEmpty Data For: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ dataFileString });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nPath: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(self.getDataFilePath().?, "toFileSystemString").toFileSystemString() });
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("getData()") });
                    }
                }
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.literal("Could Not Preview Data: "), self.data), self, String.literal("getData()"), e });
//             }
        return self.data;
    }
    

    // throws Exception
    pub fn getDataDocument(self: *Self) ?*Document {
        const localData: ?*String = Inheritance.upcast(?*String, self.getData());
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ localData })) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("No Data So Creating New Document"), self, String.literal("getDataDocument()") });
            }
            return Inheritance.upcast(?*Document, DomDocumentHelper.create());
        } else {
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ localData }));
            return document;
        }
    }
    

    pub fn getDataFile(self: *Self) ?*String {
        return self.dataFileName;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.NAME, self.name });
        _ = Inheritance.call(hashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.OBJECTFILENAME, self.objectFileName });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.OBJECT, self.anyType });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.OBJECTCONFIGFILENAME, self.getObjectConfigFile() });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.OBJECTCONFIG, Inheritance.callStatic(Encoder, "encode", .{ Object.toString(Object.of(self.getObjectConfigInterface())).?.getBytes() }) });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.TEMPLATEFILENAME, self.templateFileName });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.TEMPLATE, self.template });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.DATAFILENAME, self.dataFileName });
        _ = Inheritance.call(hashMap.?, "put", .{ transformInfoData.?.DATA, Inheritance.callStatic(Encoder, "encode", .{ self.data.?.getBytes() }) });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        return hashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ self.name });
        _ = Inheritance.call(vector.?, "add", .{ self.storeName });
        _ = Inheritance.call(vector.?, "add", .{ self.objectFileName });
        _ = Inheritance.call(vector.?, "add", .{ self.anyType });
        _ = Inheritance.call(vector.?, "add", .{ self.getObjectConfigFile() });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.callStatic(Encoder, "encode", .{ Object.toString(Object.of(self.getObjectConfigInterface())).?.getBytes() }) });
        _ = Inheritance.call(vector.?, "add", .{ self.templateFileName });
        _ = Inheritance.call(vector.?, "add", .{ self.template });
        _ = Inheritance.call(vector.?, "add", .{ self.dataFileName });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.callStatic(Encoder, "encode", .{ self.data.?.getBytes() }) });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(vector.?, "add", .{ time });
        _ = Inheritance.call(vector.?, "add", .{ time });
        return vector;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getName());
    }
    

    pub fn setChild(self: *Self) void {
        self.isChild = true;
    }
    

    pub fn isChild(self: *Self) bool {
        return self.isChild;
    }
    

    pub fn getObjectConfigInterface(self: *Self) ?*TransformInfoObjectConfigInterface {
        return self.objectConfigInterface;
    }
    

    pub fn setObjectConfigInterface(self: *Self, objectConfigInterface: ?*TransformInfoObjectConfigInterface) void {
        self.objectConfigInterface = objectConfigInterface;
    }
};

