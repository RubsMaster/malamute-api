import User from "../models/user.schema.js";
import jwt from "jsonwebtoken";

export const authenticate = async (req, res, next) => {
    try {
      const authHeader = req.headers.authorization;
  
      if (!authHeader || !authHeader.startsWith("Bearer ")) {
        return res.status(401).json({
          success: false,
          error: "Acceso no autorizado - Token no proporcionado",
        });
      }
  
      const token = authHeader.split(" ")[1];
  
      const decoded = jwt.verify(token, JWT_SECRET);
  
      const user = await User.findById(decoded.userId).select("-password -__v");
  
      if (!user) {
        return res.status(401).json({
          success: false,
          error: "Usuario no encontrado",
        });
      }
  
      req.user = user;
      next();
    } catch (error) {
      console.error("Error de autenticación:", error);
      const message =
        error.name === "TokenExpiredError" ? "Token expirado" : "Token inválido";
  
      res.status(401).json({
        success: false,
        error: `Acceso no autorizado - ${message}`,
      });
    }
  };