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
// package org.allbinary.input.automation.module.generic.configuration.profile

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
const GenericProfileActionData = @import("org/allbinary/input/automation/module/generic/configuration/profile/actions/GenericProfileActionData.zig").GenericProfileActionData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const GenericProfile = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile.zig").GenericProfile;
const GenericProfileData = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileData.zig").GenericProfileData;
const GenericProfilesData = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfilesData.zig").GenericProfilesData;

pub const GenericProfiles = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.configuration.profile.GenericProfiles";
    logUtil: ?*LogUtil = null,
    hashMap: ?*HashMap = null,
    profilesDefaultListModelHelper: ?*DefaultListModelHelper = null,
    fileName: ?*String = null,
    // Implements DomNodeInterface
    // Implements DomDocumentMappingInterface
    pub const DEFAULT_PROFILES_PATH: ?*String = String.literal("./modules/configs/profiles/");
    pub var DEFAULT_PROFILE_ACTIONS_PATH: ?*String = undefined;
    pub var DEFAULT_FILE: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DEFAULT_PROFILE_ACTIONS_PATH = Inheritance.upcast(?*String, String.plus(GenericProfiles.DEFAULT_PROFILES_PATH, String.literal("actions/")));
        DEFAULT_FILE = Inheritance.upcast(?*String, String.plus(GenericProfiles.DEFAULT_PROFILES_PATH, String.literal("profiles.xml")));
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
    }
    

    pub fn create1(fileName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.fileName = fileName;
        this.profilesDefaultListModelHelper = DefaultListModelHelper.create();
        this.hashMap = Inheritance.upcast(@TypeOf(this.hashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        if (Inheritance.callStatic(File, "create1", .{ fileName }).isFile()) {
            const bytes: []i8 = array_N66683: { const array_N66683_array = allocator.alloc(i8, @intCast(100000)) catch unreachable; @memset(array_N66683_array, 0); break :array_N66683 array_N66683_array; };
            const idFile: ?*FileInputStream = Inheritance.callStatic(FileInputStream, "create1", .{ fileName });
            const length: i32 = Inheritance.call(idFile.?, "read", .{ bytes }); _ = length;
            const data: ?*String = Inheritance.callStatic(String, "create1", .{ bytes });
            const endIndex: i32 = Inheritance.call(data.?, "lastIndexOf", .{ '>' });
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ data.?.substring2(0, endIndex + 1) }));
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ GenericProfilesData.NAME }));
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Number Of Profiles Specified: "), nodeList.?.getLength()), this, String.literal("Contructor") });
            if (nodeList != null) {
                _ = Inheritance.call(this, "initProfiles", .{ Inheritance.call(nodeList.?, "item", .{ 0 }) });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.plus(GenericProfileActionData.NAME, String.literal(" Name Node Node Children")); break :exception error.Exception; }});
            }
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Loaded: "), this.hashMap.?.size()), String.literal(" Configuration Profile Actions")), this, String.literal("Contructor") });
        } else {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("No Generic Profile: "), fileName), this, String.literal("Contructor") });
        }
        _ = Inheritance.receiverOf(this.getDefaultListModelHelper().?, "initDefaultModelList").initDefaultModelList();
        return this;
    }
    

    // throws Exception
    pub fn initProfiles(self: *Self, node: ?*Node) void {
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const profileNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            if (Inheritance.call(profileNameNode.?.getNodeName().?, "compareTo", .{ GenericProfileData.NAME }) == 0) {
                const genericProfile: ?*GenericProfile = Inheritance.callStatic(GenericProfile, "create1", .{ profileNameNode });
                _ = Inheritance.call(self.hashMap.?, "put", .{ genericProfile.?.getName(), genericProfile });
                _ = Inheritance.call(self.getDefaultListModelHelper().?, "add", .{ genericProfile.?.getName() });
            }
            }
        }
    }
    

    pub fn getDefaultListModelHelper(self: *Self) ?*DefaultListModelHelper {
        return self.profilesDefaultListModelHelper;
    }
    

    // throws Exception
    pub fn get(self: *Self, name: ?*String) ?*GenericProfile {
        const genericProfile: ?*GenericProfile = Inheritance.cast(?*GenericProfile, Inheritance.call(self.hashMap.?, "get", .{ name }));
        if (genericProfile == null) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("No Generic Profile Named: "), name), String.literal(" availability was: ")), self.hashMap), self, commonStrings.?.GET });
        }
        return genericProfile;
    }
    

    // throws Exception
    pub fn add(self: *Self, name: ?*String) void {
        _ = Inheritance.call(self.hashMap.?, "put", .{ name, Inheritance.callStatic(GenericProfile, "create1", .{ name }) });
        _ = Inheritance.call(self.getDefaultListModelHelper().?, "add", .{ name });
        _ = Inheritance.receiverOf(self.getDefaultListModelHelper().?, "initDefaultModelList").initDefaultModelList();
        _ = self.save();
    }
    

    // throws Exception
    pub fn remove(self: *Self, name: ?*String) void {
        _ = Inheritance.call(self.hashMap.?, "remove", .{ name });
        _ = Inheritance.call(self.getDefaultListModelHelper().?, "remove", .{ name });
        _ = Inheritance.receiverOf(self.getDefaultListModelHelper().?, "initDefaultModelList").initDefaultModelList();
        _ = self.save();
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ GenericProfilesData.NAME }));
        const set: ?*Set = Inheritance.upcast(?*Set, self.hashMap.?.keySet());
        const nameArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(nameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const genericProfile: ?*GenericProfile = Inheritance.cast(?*GenericProfile, Inheritance.call(self.hashMap.?, "get", .{ Inheritance.cast(?*String, nameArray[@intCast(index)]) }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(genericProfile.?, "toXmlNode", .{ document }) });
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
    

    // throws Exception
    pub fn save(self: *Self) void {
        const idFile: ?*FileOutputStream = Inheritance.callStatic(FileOutputStream, "create1", .{ self.fileName });
        const idOutData: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ idFile });
        const documentString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.toXmlDoc() }));
        _ = Inheritance.call(idOutData.?, "writeBytes", .{ documentString });
    }
};

