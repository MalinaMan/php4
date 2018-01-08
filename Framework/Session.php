<?php

namespace Framework;

abstract class Session
{
    const FLASH_KEY = 'flash';
    
    /**
     * @param $key
     * @param $value
     */
    public static function set($key, $value)
    {
        $_SESSION[$key] = $value;
    }
    
    /**
     * @param $key
     * @return null
     */
     
    public static function get($key, $default = null)
    {
        if (self::has($key)) {
            return $_SESSION[$key];
        }
        
        return $default;
    }
    
    /**
     * @param $key
     * @return bool
     */
    public static function has($key)
    {
        return isset($_SESSION[$key]);
    }
    
    /**
     * @param $key
     */
    public static function remove($key)
    {
        unset($_SESSION[$key]);
    }
    
    /**
     * destroy
     */
    public static function destroy()
    {
        session_destroy();
    }
    
    public static function start()
    {
        session_start();
        self::activateTimer("subscribe");
    }
    
    public static function setFlash($message)
    {
        self::set(self::FLASH_KEY, $message);
    }
    
    public static function getFlash()
    {
        $message = self::get(self::FLASH_KEY);
        self::remove(self::FLASH_KEY);
        
        return $message;
    }

    private static function activateTimer($key)
    {
        $fullkey = "timer_" . $key;
        if (!self::has($fullkey)) {
            self::set($fullkey, time());
        }
    }
}