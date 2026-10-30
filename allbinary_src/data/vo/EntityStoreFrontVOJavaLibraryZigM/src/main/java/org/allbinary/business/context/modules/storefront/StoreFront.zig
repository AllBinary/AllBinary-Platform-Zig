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
// package org.allbinary.business.context.modules.storefront

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
const ContextConfiguration = @import("org/allbinary/business/context/configuration/ContextConfiguration.zig").ContextConfiguration;
const ContextConfigurationDomDocumentMapping = @import("org/allbinary/business/context/configuration/ContextConfigurationDomDocumentMapping.zig").ContextConfigurationDomDocumentMapping;
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;
const ContextConfigurationInterfaceFactory = @import("org/allbinary/business/context/configuration/ContextConfigurationInterfaceFactory.zig").ContextConfigurationInterfaceFactory;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const AbPathUtil = @import("org/allbinary/logic/io/path/AbPathUtil.zig").AbPathUtil;
const SpecialCharacterUtil = @import("org/allbinary/logic/string/SpecialCharacterUtil.zig").SpecialCharacterUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StringEscapeUtils = @import("org/apache/commons/lang3/StringEscapeUtils.zig").StringEscapeUtils;
const Document = @import("org/w3c/dom/Document.zig").Document;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const StoreFront = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.StoreFront";
    pub const java_interfaces = .{ StoreFrontInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    directory: ?*Directory = null,
    stringUtil: ?*StringUtil = null,
    abPathUtil: ?*AbPathUtil = null,
    name: ?*String = null,
    basketName: ?*String = null,
    homeHostName: ?*String = null,
    homeHostNamePath: ?*AbPath = null,
    hostName: ?*String = null,
    hostNamePath: ?*AbPath = null,
    testHomeHostName: ?*String = null,
    testHomeHostNamePath: ?*AbPath = null,
    testHostName: ?*String = null,
    testHostNamePath: ?*AbPath = null,
    imagePath: ?*AbPath = null,
    staticPath: ?*AbPath = null,
    categoryPath: ?*AbPath = null,
    inventoryControl: ?*String = null,
    contextConfigurationInterface: ?*ContextConfigurationInterface = null,
    subStores: ?*String = null,
    tagLocation: ?*String = null,
    packageLocation: ?*String = null,
    ftp: ?*String = null,
    ftpPath: ?*AbPath = null,
    ftpUserName: ?*String = null,
    ftpPassword: ?*String = null,
    testFtp: ?*String = null,
    testFtpPath: ?*AbPath = null,
    testFtpUserName: ?*String = null,
    testFtpPassword: ?*String = null,
    timeCreated: ?*String = null,
    lastModified: ?*String = null,
    MINCHAR: i32 = 0,
    MINSTORENAMELENGTH: i32 = 0,
    MAXCHAR: i32 = 0,
    EMPTY_STRING: ?*String = null,
    ONE_EMPTY_STRING_ARRAY: []?*String = &.{},
    // Implements StoreFrontInterface
    var RESOURCES: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        RESOURCES = Inheritance.upcast(?*String, String.plus(String.literal(" Resources"), AbPathData.getInstance().?.SEPARATOR));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.abPathUtil = Inheritance.upcast(?*AbPathUtil, AbPathUtil.getInstance());
        this.name = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.basketName = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.homeHostName = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.homeHostNamePath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.hostName = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.hostNamePath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.testHomeHostName = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.testHomeHostNamePath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.testHostName = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.testHostNamePath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.imagePath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.staticPath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.categoryPath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.inventoryControl = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        
        this.subStores = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.tagLocation = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.packageLocation = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.ftp = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.ftpPath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.ftpUserName = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.ftpPassword = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.testFtp = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.testFtpPath = Inheritance.upcast(?*AbPath, this.abPathUtil.?.NO_ABPATH);
        this.testFtpUserName = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.testFtpPassword = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.timeCreated = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.lastModified = Inheritance.upcast(?*String, this.stringUtil.?.EMPTY_STRING);
        this.MINCHAR = 0;
        this.MINSTORENAMELENGTH = 1;
        this.MAXCHAR = 255;
        this.EMPTY_STRING = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.ONE_EMPTY_STRING_ARRAY = StringUtil.getInstance().?.ONE_EMPTY_STRING_ARRAY;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.contextConfigurationInterface = Inheritance.upcast(@TypeOf(this.contextConfigurationInterface), ContextConfiguration.create());
        return this;
    }
    

    pub fn create1(request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ Inheritance.callStatic(RequestParams, "create1", .{ request }).toHashMap() });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("TWB- needs update for adding and updating context configuration - currently defaults to admin context config"), this, String.literal("StoreFront") });
        }
        _ = Inheritance.call(this, "setContextConfigurationInterface", .{ Inheritance.call(ContextConfigurationInterfaceFactory.getInstance().?, "getInstance", .{ String.literal("Admin") }) });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ hashMap });
        const domDocumentString: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.CONFIGURATION }));
        if (domDocumentString == null) {
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ domDocumentString }));
            _ = Inheritance.call(this, "setContextConfigurationInterface", .{ Inheritance.call(ContextConfigurationInterfaceFactory.getInstance().?, "getInstance", .{ document }) });
        }
        return this;
    }
    

    pub fn isColumn(self: *Self, columnName: ?*String) bool {
        _ = self;
        if (Inheritance.call(columnName.?, "compareTo", .{ StoreFrontData.getInstance().?.NAME }) == 0 or Inheritance.call(columnName.?, "compareTo", .{ UserData.MAINEMAIL }) == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn createPath(self: *Self, key: ?*String, hashMap: ?*HashMap) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ Inheritance.call(self, "create", .{ self.EMPTY_STRING, key, hashMap }), StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    // throws Exception
    pub fn createPath3(self: *Self, append: ?*String, key: ?*String, hashMap: ?*HashMap) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ Inheritance.call(self, "create", .{ append, key, hashMap }), StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn get(self: *Self, key: ?*String, hashMap: ?*HashMap) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "create", .{ self.EMPTY_STRING, key, hashMap }));
    }
    

    pub fn create(self: *Self, append: ?*String, key: ?*String, hashMap: ?*HashMap) ?*String {
        const path: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ key }));
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ path })) {
            return self.EMPTY_STRING;
        } else {
            if (Inheritance.call(self, "isColumn", .{ path })) {
                return Inheritance.upcast(?*String, String.plus(Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ path })), append));
            } else {
                return path;
            }
        }
    }
    

    // throws Exception
    pub fn getFormData(self: *Self, storeHashMap: ?*HashMap) void {
        const storeFrontData: ?*StoreFrontData = Inheritance.upcast(?*StoreFrontData, StoreFrontData.getInstance());
        self.name = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.NAME }));
        self.basketName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.NAME }));
        self.homeHostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.HOMEHOSTNAME }));
        self.homeHostNamePath = Inheritance.upcast(@TypeOf(self.homeHostNamePath), Inheritance.call(self, "createPath", .{ storeFrontData.?.HOMEHOSTNAMEPATH, storeHashMap }));
        self.hostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.HOSTNAME }));
        self.hostNamePath = Inheritance.upcast(@TypeOf(self.hostNamePath), Inheritance.call(self, "createPath", .{ storeFrontData.?.HOSTNAMEPATH, storeHashMap }));
        self.testHomeHostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTHOMEHOSTNAME }));
        self.testHomeHostNamePath = Inheritance.upcast(@TypeOf(self.testHomeHostNamePath), Inheritance.call(self, "createPath", .{ storeFrontData.?.TESTHOMEHOSTNAMEPATH, storeHashMap }));
        self.testHostName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTHOSTNAME }));
        self.testHostNamePath = Inheritance.upcast(@TypeOf(self.testHostNamePath), Inheritance.call(self, "createPath", .{ storeFrontData.?.TESTHOSTNAMEPATH, storeHashMap }));
        self.imagePath = Inheritance.upcast(@TypeOf(self.imagePath), Inheritance.call(self, "createPath", .{ StoreFront.RESOURCES, storeFrontData.?.IMAGEPATH, storeHashMap }));
        self.staticPath = Inheritance.upcast(@TypeOf(self.staticPath), Inheritance.call(self, "createPath", .{ String.plus(String.literal(" Products"), AbPathData.getInstance().?.SEPARATOR), storeFrontData.?.STATICPATH, storeHashMap }));
        self.categoryPath = Inheritance.upcast(@TypeOf(self.categoryPath), Inheritance.call(self, "createPath", .{ StoreFront.RESOURCES, storeFrontData.?.CATEGORYPATH, storeHashMap }));
        self.inventoryControl = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.INVENTORYCONTROL }));
        self.subStores = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.SUBSTORES }));
        self.tagLocation = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TAGLOCATION }));
        self.packageLocation = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.PACKAGELOCATION }));
        self.ftp = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.FTP }));
        self.ftpPath = Inheritance.upcast(@TypeOf(self.ftpPath), Inheritance.call(self, "createPath", .{ storeFrontData.?.FTPPATH, storeHashMap }));
        self.ftpUserName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.FTPUSERNAME }));
        self.ftpPassword = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.FTPPASSWORD }));
        self.testFtp = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTFTP }));
        self.testFtpPath = Inheritance.upcast(@TypeOf(self.testFtpPath), Inheritance.call(self, "createPath", .{ storeFrontData.?.TESTFTPPATH, storeHashMap }));
        self.testFtpUserName = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTFTPUSERNAME }));
        self.testFtpPassword = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ storeFrontData.?.TESTFTPPASSWORD }));
        self.timeCreated = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ EntryData.getInstance().?.TIMECREATED }));
        self.lastModified = Inheritance.cast(?*String, Inheritance.call(storeHashMap.?, "get", .{ EntryData.getInstance().?.LASTMODIFIED }));
    }
    

    pub fn isNameValid(self: *Self) ?*Boolean {
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ self.name, self.MINSTORENAMELENGTH, self.MAXCHAR })) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        } else {
            var isEscapedCharactersContained: bool = false;
            const storeNameEscaped: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(StringEscapeUtils, "escapeHtml3", .{ self.name }));
            if (Inheritance.call(self.name.?, "compareTo", .{ storeNameEscaped }) != 0) {
                isEscapedCharactersContained = true;
            }
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            var isSpacesContained: bool = false;
            if (Inheritance.call(stringValidationUtil.?, "containsSpaces", .{ self.name })) {
                isSpacesContained = true;
            }
            if (isSpacesContained or isEscapedCharactersContained) {
                const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, SpecialCharacterUtil.getHashMap());
                _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ CommonSeps.getInstance().?.SPACE })[0..], self.ONE_EMPTY_STRING_ARRAY });
                self.name = Inheritance.upcast(@TypeOf(self.name), Inheritance.call(Inheritance.callStatic(Replace, "create1", .{ hashMap }), "all", .{ self.name }));
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
        valid = Inheritance.upcast(@TypeOf(valid), self.isNameValid());
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.basketName, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.homeHostName, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.homeHostNamePath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.hostName, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.hostNamePath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testHomeHostName, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.testHomeHostNamePath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testHostName, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.testHostNamePath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.imagePath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.staticPath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.categoryPath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.inventoryControl, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.subStores, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.tagLocation, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.packageLocation, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.ftp, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.ftpPath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.ftpUserName, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.ftpPassword, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testFtp, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.testFtpPath)), self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testFtpUserName, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testFtpPassword, self.MINCHAR, self.MAXCHAR })) {
            valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
        }
        if (valid.?.booleanValue() == true) {
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        } else {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
    }
    

    pub fn nameValidationInfo(self: *Self) ?*String {
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.name, self.MINCHAR, self.MAXCHAR })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Name is invalid. Must be < ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.MAXCHAR });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters.<br>") });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        return self.EMPTY_STRING;
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.nameValidationInfo() });
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.basketName, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Basket name is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.MAXCHAR });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters.<br>") });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.homeHostName, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Home host name is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.MAXCHAR });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters.<br>") });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.homeHostNamePath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Home host name path is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.MAXCHAR });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters.<br>") });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.hostName, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Host name is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.MAXCHAR });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters.<br>") });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.hostNamePath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Host name path is invalid. Must be < ") });
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.MAXCHAR });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" and > 0 characters.<br>") });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testHomeHostName, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test home host name is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.testHomeHostNamePath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test home host name path is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testHostName, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test host name is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.testHostNamePath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test host name path is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.imagePath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Image path is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.staticPath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Static path is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ Object.toString(Object.of(self.categoryPath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Category path is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.inventoryControl, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Inventory control is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.subStores, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Sub stores is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.tagLocation, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Tag location is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.packageLocation, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Package location is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.ftp, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Ftp is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.ftpPath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Ftp path is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.ftpUserName, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Ftp username is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.ftpPassword, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Ftp password is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testFtp, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test ftp is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ Object.toString(Object.of(self.testFtpPath)), self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test ftp Path is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testFtpUserName, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test ftp username is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.testFtpPassword, self.MINCHAR, self.MAXCHAR })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.literal("Test ftp password is invalid. Must be < "), self.MAXCHAR), String.literal(" and > 0 characters.<br>")) });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
    }
    

    pub fn getTestHtmlPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "getTestHtmlPath").getTestHtmlPath() + self.getCurrentHostNamePath());
    }
    

    pub fn getCurrentHostName(self: *Self) ?*String {
        var location: ?*String = self.EMPTY_STRING;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHostName());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHostName());
        }
        return location;
    }
    

    pub fn getCurrentHostNamePath(self: *Self) ?*String {
        var location: ?*String = self.EMPTY_STRING;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHostNamePath());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHostNamePath());
        }
        return location;
    }
    

    pub fn getCurrentHomeHostName(self: *Self) ?*String {
        var location: ?*String = self.EMPTY_STRING;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHomeHostName());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHomeHostName());
        }
        return location;
    }
    

    pub fn getCurrentHomeHostNamePath(self: *Self) ?*String {
        var location: ?*String = self.EMPTY_STRING;
        if (Inheritance.receiverOf(org.allbinary.?.globals.?.URLGLOBALS.?, "isTestingMode").isTestingMode()) {
            location = Inheritance.upcast(@TypeOf(location), self.getTestHomeHostNamePath());
        } else {
            location = Inheritance.upcast(@TypeOf(location), self.getHomeHostNamePath());
        }
        return location;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getBasketName(self: *Self) ?*String {
        return self.basketName;
    }
    

    pub fn getHomeHostName(self: *Self) ?*String {
        return self.homeHostName;
    }
    

    pub fn getHomeHostNamePath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.homeHostNamePath)));
    }
    

    pub fn getHostName(self: *Self) ?*String {
        return self.hostName;
    }
    

    pub fn getHostNamePath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.hostNamePath)));
    }
    

    pub fn getTestHomeHostName(self: *Self) ?*String {
        return self.testHomeHostName;
    }
    

    pub fn getTestHomeHostNamePath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.testHomeHostNamePath)));
    }
    

    pub fn getTestHostName(self: *Self) ?*String {
        return self.testHostName;
    }
    

    pub fn getTestHostNamePath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.testHostNamePath)));
    }
    

    pub fn getStaticPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.staticPath)));
    }
    

    pub fn getCategoryPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.categoryPath)));
    }
    

    pub fn getInventoryControl(self: *Self) ?*String {
        return self.inventoryControl;
    }
    

    // throws Exception
    pub fn getSubStores(self: *Self) ?*BasicArrayList {
        { // try
            const tokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ CommonSeps.getInstance().?.SEMICOLON });
            const subStoreVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(tokenizer.?, "getTokensFromString", .{ self.subStores, BasicArrayListD.create() }));
            return subStoreVector;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn getTagLocation(self: *Self) ?*String {
        return self.tagLocation;
    }
    

    pub fn getPackageLocation(self: *Self) ?*String {
        return self.packageLocation;
    }
    

    pub fn getFtp(self: *Self) ?*String {
        return self.ftp;
    }
    

    pub fn getFtpUserName(self: *Self) ?*String {
        return self.ftpUserName;
    }
    

    pub fn getFtpPassword(self: *Self) ?*String {
        return self.ftpPassword;
    }
    

    pub fn getTestFtp(self: *Self) ?*String {
        return self.testFtp;
    }
    

    pub fn getTestFtpUserName(self: *Self) ?*String {
        return self.testFtpUserName;
    }
    

    pub fn getTestFtpPassword(self: *Self) ?*String {
        return self.testFtpPassword;
    }
    

    pub fn getFtpPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.ftpPath)));
    }
    

    pub fn getTestFtpPath(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.testFtpPath)));
    }
    

    pub fn getTimeCreated(self: *Self) ?*String {
        return self.timeCreated;
    }
    

    pub fn getLastModified(self: *Self) ?*String {
        return self.lastModified;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn setBasketName(self: *Self, value: ?*String) void {
        self.basketName = value;
    }
    

    pub fn setHomeHostName(self: *Self, value: ?*String) void {
        self.homeHostName = value;
    }
    

    // throws Exception
    pub fn setHomeHostNamePath(self: *Self, value: ?*String) void {
        self.homeHostNamePath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn setHostName(self: *Self, value: ?*String) void {
        self.hostName = value;
    }
    

    // throws Exception
    pub fn setHostNamePath(self: *Self, value: ?*String) void {
        self.hostNamePath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn setTestHomeHostName(self: *Self, value: ?*String) void {
        self.testHomeHostName = value;
    }
    

    // throws Exception
    pub fn setTestHomeHostNamePath(self: *Self, value: ?*String) void {
        self.testHomeHostNamePath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn setTestHostName(self: *Self, value: ?*String) void {
        self.testHostName = value;
    }
    

    // throws Exception
    pub fn setTestHostNamePath(self: *Self, value: ?*String) void {
        self.testHostNamePath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    // throws Exception
    pub fn setImagePath(self: *Self, value: ?*String) void {
        self.imagePath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    // throws Exception
    pub fn setStaticPath(self: *Self, value: ?*String) void {
        self.staticPath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    // throws Exception
    pub fn setCategoryPath(self: *Self, value: ?*String) void {
        self.categoryPath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn setSubStores(self: *Self, value: ?*String) void {
        self.subStores = value;
    }
    

    pub fn setTagLocation(self: *Self, value: ?*String) void {
        self.tagLocation = value;
    }
    

    pub fn setPackageLocation(self: *Self, value: ?*String) void {
        self.packageLocation = value;
    }
    

    pub fn setInventoryControl(self: *Self, value: ?*String) void {
        self.inventoryControl = value;
    }
    

    pub fn getPackageLocation1(self: *Self, value: ?*String) void {
        self.packageLocation = value;
    }
    

    pub fn setFtp(self: *Self, value: ?*String) void {
        self.ftp = value;
    }
    

    pub fn setFtpUserName(self: *Self, value: ?*String) void {
        self.ftpUserName = value;
    }
    

    pub fn setFtpPassword(self: *Self, value: ?*String) void {
        self.ftpPassword = value;
    }
    

    pub fn setTestFtp(self: *Self, value: ?*String) void {
        self.testFtp = value;
    }
    

    pub fn setTestFtpUserName(self: *Self, value: ?*String) void {
        self.testFtpUserName = value;
    }
    

    pub fn setTestFtpPassword(self: *Self, value: ?*String) void {
        self.testFtpPassword = value;
    }
    

    pub fn setTimeCreated(self: *Self, value: ?*String) void {
        self.timeCreated = value;
    }
    

    pub fn setLastModified(self: *Self, value: ?*String) void {
        self.lastModified = value;
    }
    

    // throws Exception
    pub fn setFtpPath(self: *Self, value: ?*String) void {
        self.ftpPath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    // throws Exception
    pub fn setTestFtpPath(self: *Self, value: ?*String) void {
        self.testFtpPath = Inheritance.callStatic(AbPath, "create2", .{ value, StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    // throws Exception
    pub fn createDirectories(self: *Self) bool {
        const storeAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getWebappPath() + self.getCurrentHomeHostNamePath(), StringUtil.getInstance().?.EMPTY_STRING });
        if (!Inheritance.call(self.directory.?, "create", .{ storeAbPath })) {
            return false;
        }
        if (!Inheritance.call(self.directory.?, "create", .{ Inheritance.callStatic(AbPath, "create2", .{ storeAbPath + self.getCategoryPath(), StringUtil.getInstance().?.EMPTY_STRING }) })) {
            return false;
        }
        if (!Inheritance.call(self.directory.?, "create", .{ Inheritance.callStatic(AbPath, "create2", .{ storeAbPath + self.getStaticPath(), StringUtil.getInstance().?.EMPTY_STRING }) })) {
            return false;
        }
        return true;
    }
    

    // throws Exception
    pub fn install(self: *Self, current: i32, total: i32) void {
        { // try
            if (!self.createDirectories()) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Unable to create store directories"); break :exception error.Exception; }});
            }
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
            const viewPath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ viewPath });
            _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.INSTALLPATH });
            const fromDirectoryAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ viewPath });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("special") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
            const fromSpecialDirectoryAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ viewPath });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
            const toDirectoryAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
            if (current == 0) {
                if (!Inheritance.call(self.directory.?, "create", .{ toDirectoryAbPath })) {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unable to create store view directory: "), Object.toString(Object.of(toDirectoryAbPath))); break :exception error.Exception; }});
                }
            }
            const viewTotal: i32 = @divTrunc((total * 85), 100);
            const installTotal: i32 = @divTrunc((total * 93), 100);
            if (current < viewTotal) {
                const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ fromSpecialDirectoryAbPath }));
                if (file.?.isDirectory()) {
                    const halfViewTotal: i32 = @divTrunc(viewTotal, 2);
                    if (current < halfViewTotal) {
                        _ = Inheritance.call(self, "installViews", .{ fromSpecialDirectoryAbPath, toDirectoryAbPath, current, halfViewTotal });
                    } else if (current < viewTotal) {
                        _ = Inheritance.call(self, "installViews", .{ fromDirectoryAbPath, toDirectoryAbPath, current - halfViewTotal, viewTotal - halfViewTotal });
                    }
                } else {
                    _ = Inheritance.call(self, "installViews", .{ fromDirectoryAbPath, toDirectoryAbPath, current, viewTotal });
                }
            } else if (current < installTotal) {
                _ = Inheritance.call(self, "installResources", .{ fromDirectoryAbPath, current - viewTotal, installTotal - viewTotal });
            } else {
                _ = Inheritance.call(self, "installMedia", .{ fromDirectoryAbPath, current - installTotal, total - installTotal });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("install()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn installViews(self: *Self, fromDirectoryAbPath: ?*AbPath, toDirectoryAbPath: ?*AbPath, current: i32, total: i32) void {
        _ = self;
        _ = Inheritance.call(FileUtil.getInstance().?, "copyDirectoryPortion", .{ fromDirectoryAbPath, toDirectoryAbPath, true, false, current, total });
    }
    

    // throws Exception
    pub fn installResources(self: *Self, fromDirectoryAbPath: ?*AbPath, current: i32, total: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(fromDirectoryAbPath)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Resources") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        const installCategoryAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getCurrentHomeHostNamePath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getCategoryPath() });
        const categoryAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
        _ = Inheritance.call(FileUtil.getInstance().?, "copyDirectoryPortion", .{ installCategoryAbPath, categoryAbPath, true, false, current, total });
    }
    

    // throws Exception
    pub fn installMedia(self: *Self, fromDirectoryAbPath: ?*AbPath, current: i32, total: i32) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(fromDirectoryAbPath)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.TEMPLATEPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("images") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        const viewStoreImagesDirectoryAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
        const storeAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getWebappPath() + self.getCurrentHomeHostNamePath(), StringUtil.getInstance().?.EMPTY_STRING });
        _ = Inheritance.call(FileUtil.getInstance().?, "copyDirectoryPortion", .{ viewStoreImagesDirectoryAbPath, storeAbPath, true, false, current, total });
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const dataVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(dataVector.?, "add", .{ self.name });
        _ = Inheritance.call(dataVector.?, "add", .{ self.homeHostName });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.homeHostNamePath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ self.hostName });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.hostNamePath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ self.testHomeHostName });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.testHomeHostNamePath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ self.testHostName });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.testHostNamePath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.imagePath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.staticPath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.categoryPath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ self.inventoryControl });
        const contextConfigurationDomDocumentMapping: ?*ContextConfigurationDomDocumentMapping = Inheritance.callStatic(ContextConfigurationDomDocumentMapping, "create1", .{ self.getContextConfigurationInterface() });
        _ = Inheritance.call(dataVector.?, "add", .{ contextConfigurationDomDocumentMapping.?.toDomDocumentString() });
        _ = Inheritance.call(dataVector.?, "add", .{ self.subStores });
        _ = Inheritance.call(dataVector.?, "add", .{ self.tagLocation });
        _ = Inheritance.call(dataVector.?, "add", .{ self.packageLocation });
        _ = Inheritance.call(dataVector.?, "add", .{ self.ftp });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.ftpPath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ self.ftpUserName });
        _ = Inheritance.call(dataVector.?, "add", .{ self.ftpPassword });
        _ = Inheritance.call(dataVector.?, "add", .{ self.testFtp });
        _ = Inheritance.call(dataVector.?, "add", .{ Object.toString(Object.of(self.testFtpPath)) });
        _ = Inheritance.call(dataVector.?, "add", .{ self.testFtpUserName });
        _ = Inheritance.call(dataVector.?, "add", .{ self.testFtpPassword });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(dataVector.?, "add", .{ time });
        _ = Inheritance.call(dataVector.?, "add", .{ time });
        return dataVector;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        const storeFrontData: ?*StoreFrontData = Inheritance.upcast(?*StoreFrontData, StoreFrontData.getInstance());
        const dataHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.NAME, self.name });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.HOMEHOSTNAME, self.homeHostName });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.HOMEHOSTNAMEPATH, Object.toString(Object.of(self.homeHostNamePath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.HOSTNAME, self.hostName });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.HOSTNAMEPATH, Object.toString(Object.of(self.hostNamePath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTHOMEHOSTNAME, self.testHomeHostName });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTHOMEHOSTNAMEPATH, Object.toString(Object.of(self.testHomeHostNamePath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTHOSTNAME, self.testHostName });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTHOSTNAMEPATH, Object.toString(Object.of(self.testHostNamePath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.IMAGEPATH, Object.toString(Object.of(self.imagePath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.STATICPATH, Object.toString(Object.of(self.staticPath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.CATEGORYPATH, Object.toString(Object.of(self.categoryPath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.INVENTORYCONTROL, self.inventoryControl });
        const contextConfigurationDomDocumentMapping: ?*ContextConfigurationDomDocumentMapping = Inheritance.callStatic(ContextConfigurationDomDocumentMapping, "create1", .{ self.getContextConfigurationInterface() });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.CONFIGURATION, contextConfigurationDomDocumentMapping.?.toDomDocumentString() });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.SUBSTORES, self.subStores });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TAGLOCATION, self.tagLocation });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.PACKAGELOCATION, self.packageLocation });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.FTP, self.ftp });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.FTPPATH, Object.toString(Object.of(self.ftpPath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.FTPUSERNAME, self.ftpUserName });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.FTPPASSWORD, self.ftpPassword });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTFTP, self.testFtp });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTFTPPATH, Object.toString(Object.of(self.testFtpPath)) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTFTPUSERNAME, self.testFtpUserName });
        _ = Inheritance.call(dataHashMap.?, "put", .{ storeFrontData.?.TESTFTPPASSWORD, self.testFtpPassword });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(dataHashMap.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        return dataHashMap;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getName());
    }
    

    pub fn getContextConfigurationInterface(self: *Self) ?*ContextConfigurationInterface {
        return self.contextConfigurationInterface;
    }
    

    pub fn setContextConfigurationInterface(self: *Self, contextConfigurationInterface: ?*ContextConfigurationInterface) void {
        self.contextConfigurationInterface = contextConfigurationInterface;
    }
};

