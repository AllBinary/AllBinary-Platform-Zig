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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const CanvasDom = @import("org/allbinary/graphics/j2me/workarea/canvas/CanvasDom.zig").CanvasDom;
const IntegerDimension = @import("org/allbinary/graphics/j2me/workarea/canvas/IntegerDimension.zig").IntegerDimension;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Points = @import("org/allbinary/graphics/j2me/workarea/tools/Points.zig").Points;
const Double = @import("java/lang/Double.zig").Double;

// Java interface: an implementation is a pointer and a table of functions
pub const GraphicItemInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    setColorFn: *const fn (pointer: *anyopaque, color: ?*Color) void,
    getTreeNodeFn: *const fn (pointer: *anyopaque) ?*MutableTreeNode,
    getPointsInterfaceFn: *const fn (pointer: *anyopaque) ?*Points,
    setPointsInterfaceFn: *const fn (pointer: *anyopaque, points: ?*Points) void,
    isValidFn: *const fn (pointer: *anyopaque) bool,
    isActiveFn: *const fn (pointer: *anyopaque) bool,
    deactivateFn: *const fn (pointer: *anyopaque) void,
    activateFn: *const fn (pointer: *anyopaque) void,
    setFulcrumPointFn: *const fn (pointer: *anyopaque, point: ?*GPoint) void,
    translateFn: *const fn (pointer: *anyopaque, x: i32, y: i32) void,
    setRotateFn: *const fn (pointer: *anyopaque, theta: f64) void,
    addRotateFn: *const fn (pointer: *anyopaque, theta: f64) void,
    setAngleFn: *const fn (pointer: *anyopaque, angle: f64) void,
    addAngleFn: *const fn (pointer: *anyopaque, angle: f64) void,
    getAngleFn: *const fn (pointer: *anyopaque) f64,
    paintFn: *const fn (pointer: *anyopaque, g: ?*Graphics, canvasAngle: ?*Double, dimension: ?*IntegerDimension, x: i32, y: i32) void,
    toDomFn: *const fn (pointer: *anyopaque, canvasDom: ?*CanvasDom) ?*Node,
    removePointFn: *const fn (pointer: *anyopaque) ?*GPoint,
    addPointFn: *const fn (pointer: *anyopaque, point: ?*GPoint) void,
    mouseClickedFn: *const fn (pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void,
    mouseEnteredFn: *const fn (pointer: *anyopaque, mouseEvent: ?*MouseEvent) void,
    mouseExitedFn: *const fn (pointer: *anyopaque, mouseEvent: ?*MouseEvent) void,
    mousePressedFn: *const fn (pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void,
    mouseReleasedFn: *const fn (pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void,
    mouseDraggedFn: *const fn (pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void,
    mouseMovedFn: *const fn (pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void,
    keyPressedFn: *const fn (pointer: *anyopaque, keyEvent: ?*KeyEvent) void,
    keyReleasedFn: *const fn (pointer: *anyopaque, keyEvent: ?*KeyEvent) void,
    keyTypedFn: *const fn (pointer: *anyopaque, keyEvent: ?*KeyEvent) void,
    duplicateFn: *const fn (pointer: *anyopaque) ?*GraphicItemInterface,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn setColor(self: *Self, color: ?*Color) void {
        return self.setColorFn(self.pointer, color);
    }

    pub fn getTreeNode(self: *Self) ?*MutableTreeNode {
        return self.getTreeNodeFn(self.pointer);
    }

    pub fn getPointsInterface(self: *Self) ?*Points {
        return self.getPointsInterfaceFn(self.pointer);
    }

    pub fn setPointsInterface(self: *Self, points: ?*Points) void {
        return self.setPointsInterfaceFn(self.pointer, points);
    }

    pub fn isValid(self: *Self) bool {
        return self.isValidFn(self.pointer);
    }

    pub fn isActive(self: *Self) bool {
        return self.isActiveFn(self.pointer);
    }

    pub fn deactivate(self: *Self) void {
        return self.deactivateFn(self.pointer);
    }

    pub fn activate(self: *Self) void {
        return self.activateFn(self.pointer);
    }

    pub fn setFulcrumPoint(self: *Self, point: ?*GPoint) void {
        return self.setFulcrumPointFn(self.pointer, point);
    }

    pub fn translate(self: *Self, x: i32, y: i32) void {
        return self.translateFn(self.pointer, x, y);
    }

    pub fn setRotate(self: *Self, theta: f64) void {
        return self.setRotateFn(self.pointer, theta);
    }

    pub fn addRotate(self: *Self, theta: f64) void {
        return self.addRotateFn(self.pointer, theta);
    }

    pub fn setAngle(self: *Self, angle: f64) void {
        return self.setAngleFn(self.pointer, angle);
    }

    pub fn addAngle(self: *Self, angle: f64) void {
        return self.addAngleFn(self.pointer, angle);
    }

    pub fn getAngle(self: *Self) f64 {
        return self.getAngleFn(self.pointer);
    }

    pub fn paint(self: *Self, g: ?*Graphics, canvasAngle: ?*Double, dimension: ?*IntegerDimension, x: i32, y: i32) void {
        return self.paintFn(self.pointer, g, canvasAngle, dimension, x, y);
    }

    pub fn toDom(self: *Self, canvasDom: ?*CanvasDom) ?*Node {
        return self.toDomFn(self.pointer, canvasDom);
    }

    pub fn removePoint(self: *Self) ?*GPoint {
        return self.removePointFn(self.pointer);
    }

    pub fn addPoint(self: *Self, point: ?*GPoint) void {
        return self.addPointFn(self.pointer, point);
    }

    pub fn mouseClicked(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        return self.mouseClickedFn(self.pointer, mouseEvent, xPixelsPerCell, yPixelsPerCell);
    }

    pub fn mouseEntered(self: *Self, mouseEvent: ?*MouseEvent) void {
        return self.mouseEnteredFn(self.pointer, mouseEvent);
    }

    pub fn mouseExited(self: *Self, mouseEvent: ?*MouseEvent) void {
        return self.mouseExitedFn(self.pointer, mouseEvent);
    }

    pub fn mousePressed(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        return self.mousePressedFn(self.pointer, mouseEvent, xPixelsPerCell, yPixelsPerCell);
    }

    pub fn mouseReleased(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        return self.mouseReleasedFn(self.pointer, mouseEvent, xPixelsPerCell, yPixelsPerCell);
    }

    pub fn mouseDragged(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        return self.mouseDraggedFn(self.pointer, mouseEvent, xPixelsPerCell, yPixelsPerCell);
    }

    pub fn mouseMoved(self: *Self, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
        return self.mouseMovedFn(self.pointer, mouseEvent, xPixelsPerCell, yPixelsPerCell);
    }

    pub fn keyPressed(self: *Self, keyEvent: ?*KeyEvent) void {
        return self.keyPressedFn(self.pointer, keyEvent);
    }

    pub fn keyReleased(self: *Self, keyEvent: ?*KeyEvent) void {
        return self.keyReleasedFn(self.pointer, keyEvent);
    }

    pub fn keyTyped(self: *Self, keyEvent: ?*KeyEvent) void {
        return self.keyTypedFn(self.pointer, keyEvent);
    }

    pub fn duplicate(self: *Self) ?*GraphicItemInterface {
        return self.duplicateFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn setColor(pointer: *anyopaque, color: ?*Color) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setColor").setColor(color);
            }
            fn getTreeNode(pointer: *anyopaque) ?*MutableTreeNode {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*MutableTreeNode, Inheritance.receiver(implementation, "getTreeNode").getTreeNode());
            }
            fn getPointsInterface(pointer: *anyopaque) ?*Points {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Points, Inheritance.receiver(implementation, "getPointsInterface").getPointsInterface());
            }
            fn setPointsInterface(pointer: *anyopaque, points: ?*Points) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPointsInterface").setPointsInterface(points);
            }
            fn isValid(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isValid").isValid();
            }
            fn isActive(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isActive").isActive();
            }
            fn deactivate(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "deactivate").deactivate();
            }
            fn activate(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "activate").activate();
            }
            fn setFulcrumPoint(pointer: *anyopaque, point: ?*GPoint) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFulcrumPoint").setFulcrumPoint(point);
            }
            fn translate(pointer: *anyopaque, x: i32, y: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "translate").translate(x, y);
            }
            fn setRotate(pointer: *anyopaque, theta: f64) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRotate").setRotate(theta);
            }
            fn addRotate(pointer: *anyopaque, theta: f64) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addRotate").addRotate(theta);
            }
            fn setAngle(pointer: *anyopaque, angle: f64) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAngle").setAngle(angle);
            }
            fn addAngle(pointer: *anyopaque, angle: f64) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addAngle").addAngle(angle);
            }
            fn getAngle(pointer: *anyopaque) f64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getAngle").getAngle();
            }
            fn paint(pointer: *anyopaque, g: ?*Graphics, canvasAngle: ?*Double, dimension: ?*IntegerDimension, x: i32, y: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "paint").paint(g, canvasAngle, dimension, x, y);
            }
            fn toDom(pointer: *anyopaque, canvasDom: ?*CanvasDom) ?*Node {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Node, Inheritance.receiver(implementation, "toDom").toDom(canvasDom));
            }
            fn removePoint(pointer: *anyopaque) ?*GPoint {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GPoint, Inheritance.receiver(implementation, "removePoint").removePoint());
            }
            fn addPoint(pointer: *anyopaque, point: ?*GPoint) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addPoint").addPoint(point);
            }
            fn mouseClicked(pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseClicked").mouseClicked(mouseEvent, xPixelsPerCell, yPixelsPerCell);
            }
            fn mouseEntered(pointer: *anyopaque, mouseEvent: ?*MouseEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseEntered").mouseEntered(mouseEvent);
            }
            fn mouseExited(pointer: *anyopaque, mouseEvent: ?*MouseEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseExited").mouseExited(mouseEvent);
            }
            fn mousePressed(pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mousePressed").mousePressed(mouseEvent, xPixelsPerCell, yPixelsPerCell);
            }
            fn mouseReleased(pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseReleased").mouseReleased(mouseEvent, xPixelsPerCell, yPixelsPerCell);
            }
            fn mouseDragged(pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseDragged").mouseDragged(mouseEvent, xPixelsPerCell, yPixelsPerCell);
            }
            fn mouseMoved(pointer: *anyopaque, mouseEvent: ?*MouseEvent, xPixelsPerCell: i32, yPixelsPerCell: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseMoved").mouseMoved(mouseEvent, xPixelsPerCell, yPixelsPerCell);
            }
            fn keyPressed(pointer: *anyopaque, keyEvent: ?*KeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "keyPressed").keyPressed(keyEvent);
            }
            fn keyReleased(pointer: *anyopaque, keyEvent: ?*KeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "keyReleased").keyReleased(keyEvent);
            }
            fn keyTyped(pointer: *anyopaque, keyEvent: ?*KeyEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "keyTyped").keyTyped(keyEvent);
            }
            fn duplicate(pointer: *anyopaque) ?*GraphicItemInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GraphicItemInterface, Inheritance.receiver(implementation, "duplicate").duplicate());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getNameFn = Methods.getName, .setColorFn = Methods.setColor, .getTreeNodeFn = Methods.getTreeNode, .getPointsInterfaceFn = Methods.getPointsInterface, .setPointsInterfaceFn = Methods.setPointsInterface, .isValidFn = Methods.isValid, .isActiveFn = Methods.isActive, .deactivateFn = Methods.deactivate, .activateFn = Methods.activate, .setFulcrumPointFn = Methods.setFulcrumPoint, .translateFn = Methods.translate, .setRotateFn = Methods.setRotate, .addRotateFn = Methods.addRotate, .setAngleFn = Methods.setAngle, .addAngleFn = Methods.addAngle, .getAngleFn = Methods.getAngle, .paintFn = Methods.paint, .toDomFn = Methods.toDom, .removePointFn = Methods.removePoint, .addPointFn = Methods.addPoint, .mouseClickedFn = Methods.mouseClicked, .mouseEnteredFn = Methods.mouseEntered, .mouseExitedFn = Methods.mouseExited, .mousePressedFn = Methods.mousePressed, .mouseReleasedFn = Methods.mouseReleased, .mouseDraggedFn = Methods.mouseDragged, .mouseMovedFn = Methods.mouseMoved, .keyPressedFn = Methods.keyPressed, .keyReleasedFn = Methods.keyReleased, .keyTypedFn = Methods.keyTyped, .duplicateFn = Methods.duplicate };
        return this;
    }
};

