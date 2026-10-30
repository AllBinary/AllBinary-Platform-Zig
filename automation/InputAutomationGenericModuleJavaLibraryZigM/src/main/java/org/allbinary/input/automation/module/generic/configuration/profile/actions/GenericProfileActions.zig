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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const DataOutputStream = @import("java/io/DataOutputStream.zig").DataOutputStream;
const File = @import("java/io/File.zig").File;
// const FileInputStream = @import("java/io/FileInputStream.zig").FileInputStream;
// const FileOutputStream = @import("java/io/FileOutputStream.zig").FileOutputStream;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const DomDocumentMappingInterface = @import("org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface.zig").DomDocumentMappingInterface;
const DefaultListModelHelper = @import("org/allbinary/input/automation/module/DefaultListModelHelper.zig").DefaultListModelHelper;
const GenericProfiles = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfiles.zig").GenericProfiles;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonDataFileStrings = @import("org/allbinary/logic/io/file/CommonDataFileStrings.zig").CommonDataFileStrings;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const GenericProfileAction = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileAction.zig").GenericProfileAction;
const GenericProfileActionData = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData.zig").GenericProfileActionData;
const GenericProfileActionsData = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsData.zig").GenericProfileActionsData;
const GenericProfileActionsJPanel = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionsJPanel.zig").GenericProfileActionsJPanel;

pub const GenericProfileActions = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActions";
    logUtil: ?*LogUtil = null,
    commonFileStrings: ?*CommonDataFileStrings = null,
    name: ?*String = null,
    genericProfileActionsJPanel: ?*GenericProfileActionsJPanel = null,
    actionsDefaultListModelHelper: ?*DefaultListModelHelper = null,
    hashMap: ?*HashMap = null,
    // Implements DomNodeInterface
    // Implements DomDocumentMappingInterface
    pub var DEFAULT_PROFILE_ACTIONS_PATH: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DEFAULT_PROFILE_ACTIONS_PATH = Inheritance.upcast(?*String, String.plus(GenericProfiles.DEFAULT_PROFILES_PATH, String.literal("actions/")));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonFileStrings = Inheritance.upcast(?*CommonDataFileStrings, CommonDataFileStrings.getInstance());
        this.name = null;
        this.genericProfileActionsJPanel = null;
        this.actionsDefaultListModelHelper = null;
        this.hashMap = null;
    }
    

    pub fn create2(genericProfileActionsJPanel: ?*GenericProfileActionsJPanel, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "init", .{ genericProfileActionsJPanel });
        _ = this.load();
        return this;
    }
    

    pub fn create3(genericProfileActionsJPanel: ?*GenericProfileActionsJPanel, abPath: ?*AbPath, name: ?*String) *Self {
        _ = abPath;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "init", .{ genericProfileActionsJPanel });
        _ = this.load();
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create3(genericProfileActionsJPanel: ?*GenericProfileActionsJPanel, fileInputStream: ?*FileInputStream, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "init", .{ genericProfileActionsJPanel });
        _ = Inheritance.call(this, "fileInit", .{ fileInputStream });
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, genericProfileActionsJPanel: ?*GenericProfileActionsJPanel) void {
        _ = Inheritance.call(self, "setGenericProfileActionsJPanel", .{ genericProfileActionsJPanel });
        self.actionsDefaultListModelHelper = DefaultListModelHelper.create();
        _ = Inheritance.call(self, "setHashMap", .{ HashMap.create() });
    }
    

    // throws Exception
    pub fn save(self: *Self) void {
        const idFile: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ String.plus(String.plus(GenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH, self.getName()), self.commonFileStrings.?._XML) });
        const idOutData: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ idFile });
        _ = Inheritance.call(idOutData.?, "writeBytes", .{ Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.toXmlDoc() }) });
    }
    

    pub fn getFile(self: *Self, name: ?*String) ?*File {
        const fileName: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(GenericProfileActions.DEFAULT_PROFILE_ACTIONS_PATH, name), self.commonFileStrings.?._XML));
        return Inheritance.callStatic(File, "create1", .{ fileName });
    }
    

    // throws Exception
    pub fn load(self: *Self) void {
        const file: ?*File = Inheritance.upcast(?*File, Inheritance.call(self, "getFile", .{ self.getName() }));
        if (file.?.isFile()) {
            const idFile: ?*FileInputStream = Inheritance.callStatic(FileInputStream, "create1", .{ file });
            _ = Inheritance.call(self, "fileInit", .{ idFile });
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("No Profile: "), file.?.getAbsolutePath()), self, String.literal("Contructor") });
        }
    }
    

    // throws Exception
    pub fn fileInit(self: *Self, fileInputStream: ?*FileInputStream) void {
        const bytes: []i8 = array_N67735: { const array_N67735_array = allocator.alloc(i8, @intCast(100000)) catch unreachable; @memset(array_N67735_array, 0); break :array_N67735 array_N67735_array; };
        const length: i32 = Inheritance.call(fileInputStream.?, "read", .{ bytes }); _ = length;
        const data: ?*String = Inheritance.callStatic(String, "create1", .{ bytes });
        const endIndex: i32 = Inheritance.call(data.?, "lastIndexOf", .{ '>' });
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ data.?.substring2(0, endIndex + 1) }));
        const nameNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ GenericProfileActionsData.NAME }));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Profiles Specified: "), nameNodeList.?.getLength()), self, String.literal("Contructor") });
        {
            var index: i32 = 0;
            while (index < nameNodeList.?.getLength()) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nameNodeList.?, "item", .{ index }));
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
            if (nodeList != null) {
                _ = Inheritance.call(self, "initActions", .{ nodeList });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(GenericProfileActionData.NAME, String.literal(" Name Node Node Children")); break :exception error.Exception; }});
            }
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Loaded: "), Inheritance.receiverOf(self.getHashMap().?, "size").size()), String.literal(" Configuration Profile Action(s)")), self, String.literal("Contructor") });
        _ = Inheritance.receiverOf(self.getDefaultListModelHelper().?, "initDefaultModelList").initDefaultModelList();
    }
    

    // throws Exception
    pub fn initActions(self: *Self, nodeList: ?*NodeList) void {
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const actionNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (actionNode != null) {
                const genericConfigurationProfileAction: ?*GenericProfileAction = Inheritance.callStatic(GenericProfileAction, "create2", .{ Inheritance.receiverOf(self.getGenericProfileActionsJPanel().?, "getGenericProfileActionJPanel").getGenericProfileActionJPanel(), actionNode });
                _ = Inheritance.call(self.getHashMap().?, "put", .{ genericConfigurationProfileAction.?.getName(), genericConfigurationProfileAction });
                _ = Inheritance.call(self.getDefaultListModelHelper().?, "add", .{ genericConfigurationProfileAction.?.getName() });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(GenericProfileActionData.NAME, String.literal(" Node Null")); break :exception error.Exception; }});
            }
            }
        }
    }
    

    pub fn getDefaultListModelHelper(self: *Self) ?*DefaultListModelHelper {
        return self.actionsDefaultListModelHelper;
    }
    

    pub fn getAction(self: *Self, string: ?*String) ?*GenericProfileAction {
        return Inheritance.cast(?*GenericProfileAction, Inheritance.call(self.getHashMap().?, "get", .{ string }));
    }
    

    // throws Exception
    pub fn add(self: *Self, name: ?*String) void {
        const genericProfileAction: ?*GenericProfileAction = Inheritance.callStatic(GenericProfileAction, "create1", .{ name });
        _ = Inheritance.call(self.getHashMap().?, "put", .{ genericProfileAction.?.getName(), genericProfileAction });
        _ = Inheritance.call(self.getDefaultListModelHelper().?, "add", .{ genericProfileAction.?.getName() });
        _ = Inheritance.receiverOf(self.getDefaultListModelHelper().?, "initDefaultModelList").initDefaultModelList();
        _ = self.save();
    }
    

    // throws Exception
    pub fn remove(self: *Self, name: ?*String) void {
        _ = Inheritance.call(self.getHashMap().?, "remove", .{ name });
        _ = Inheritance.call(self.getDefaultListModelHelper().?, "remove", .{ name });
        _ = Inheritance.receiverOf(self.getDefaultListModelHelper().?, "initDefaultModelList").initDefaultModelList();
        _ = self.save();
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("toHashMap()") });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ GenericProfileActionsData.NAME }));
        const set: ?*Set = Inheritance.upcast(?*Set, Inheritance.receiverOf(self.getHashMap().?, "keySet").keySet());
        const actionNameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(actionNameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const nextActionName: ?*String = Inheritance.cast(?*String, actionNameArray[@intCast(index)]);
            const nextGenericProfileAction: ?*GenericProfileAction = Inheritance.cast(?*GenericProfileAction, Inheritance.call(self, "getAction", .{ nextActionName }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(nextGenericProfileAction.?, "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        const document: ?*Document = Inheritance.upcast(?*Document, DomDocumentHelper.create());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(self, "toXmlNode", .{ document }));
        _ = Inheritance.call(document.?, "appendChild", .{ node });
        return document;
    }
    

    pub fn getGenericProfileActionsJPanel(self: *Self) ?*GenericProfileActionsJPanel {
        return self.genericProfileActionsJPanel;
    }
    

    pub fn setGenericProfileActionsJPanel(self: *Self, genericProfileActionsJPanel: ?*GenericProfileActionsJPanel) void {
        self.genericProfileActionsJPanel = genericProfileActionsJPanel;
    }
    

    pub fn getHashMap(self: *Self) ?*HashMap {
        return self.hashMap;
    }
    

    pub fn setHashMap(self: *Self, hashMap: ?*HashMap) void {
        self.hashMap = hashMap;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
};

