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
// package org.allbinary.data.tree.dom.document

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Transformer = @import("javax/xml/transform/Transformer.zig").Transformer;
// const TransformerFactory = @import("javax/xml/transform/TransformerFactory.zig").TransformerFactory;
// const DOMSource = @import("javax/xml/transform/dom/DOMSource.zig").DOMSource;
// const StreamResult = @import("javax/xml/transform/stream/StreamResult.zig").StreamResult;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const AbFileInputStream = @import("org/allbinary/logic/io/AbFileInputStream.zig").AbFileInputStream;
const DataOutputStreamFactory = @import("org/allbinary/logic/io/DataOutputStreamFactory.zig").DataOutputStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const Document = @import("org/w3c/dom/Document.zig").Document;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;

pub const DomDocumentFileHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.document.DomDocumentFileHelper";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn createDocument(xmlFile: ?*AbFile) ?*Document {
        { // try
            return Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.callStatic(AbFileInputStream, "create1", .{ xmlFile }) }));
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn save(file: ?*AbFile, document: ?*Document) void {
        var dataOutputStream: ?*AbDataOutputStream = null;
        { // try
            const copyTransformerFactory: ?*TransformerFactory = Inheritance.upcast(?*TransformerFactory, TransformerFactory.newInstance());
            const copyTransformer: ?*Transformer = Inheritance.upcast(?*Transformer, copyTransformerFactory.?.newTransformer());
            const domSource: ?*DOMSource = Inheritance.callStatic(DOMSource, "create1", .{ document });
            if (file.?.isFile()) {
                _ = file.?.delete();
            }
            _ = file.?.createNewFile();
            dataOutputStream = Inheritance.upcast(@TypeOf(dataOutputStream), Inheritance.call(DataOutputStreamFactory.getInstance().?, "getInstanceForAbFile", .{ file }));
            const streamResult: ?*StreamResult = Inheritance.callStatic(StreamResult, "create1", .{ dataOutputStream });
            _ = Inheritance.call(copyTransformer.?, "transform", .{ domSource, streamResult });
            _ = Inheritance.receiver(dataOutputStream.?, "flush").flush();
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ dataOutputStream });
        }
    }
};

